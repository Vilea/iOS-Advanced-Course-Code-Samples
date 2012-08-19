//
//  VIViewController.m
//  SOAPService
//
//  Created by Ivan Guajana on 14.08.12.
//  Copyright (c) 2012 Vilea GmbH. All rights reserved.
//

#import "VIViewController.h"
#import "CurrencyConvertor.h"

@interface VIViewController ()
- (float)_conversionRateFrom:(CurrencyConvertor_Currency)from to:(CurrencyConvertor_Currency)to;
@end

@implementation VIViewController
@synthesize rateFld;
@synthesize lastUpdateFld;

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  lastUpdateFld.text = @"Never updated";
  rateFld.text = @"-";
}

- (void)viewDidUnload
{
  [self setRateFld:nil];
  [self setLastUpdateFld:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)updateRate:(id)sender {
  // retrieve the current rate in background
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    float res = [self _conversionRateFrom:CurrencyConvertor_Currency_USD
                                       to:CurrencyConvertor_Currency_EUR];
      
    if (res != 0.0)
    {
      // Update UI in the main thread
      dispatch_sync(dispatch_get_main_queue(), ^{
        lastUpdateFld.text = [[NSDate date] description];
        rateFld.text = [NSString stringWithFormat:@"%.2f", res];
      });
    }
  });
}

#pragma mark -
#pragma mark Private Methods
- (float)_conversionRateFrom:(CurrencyConvertor_Currency)from to:(CurrencyConvertor_Currency)to
{
  float conversionRate = 0.0;
  
  CurrencyConvertor_ConversionRate *params = [[CurrencyConvertor_ConversionRate alloc] init];
  params.FromCurrency = from;
  params.ToCurrency = to;
  
  CurrencyConvertorSoap12Binding *service = [[CurrencyConvertorSoap12Binding alloc] initWithAddress:@"http://www.webservicex.com/CurrencyConvertor.asmx?wsdl"];
  
  // enable debug logging...
  service.logXMLInOut = YES;
  
  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
  CurrencyConvertorSoap12BindingResponse *response = [service ConversionRateUsingParameters:params];
  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
  
  // Check response for errors
  if ([response error])
  {
#ifdef DEBUG
    NSLog(@"[%@] Error: %@", NSStringFromClass([self class]), [response error]);
#endif
  }
  
  // Read through the answer
  for (id part in [response bodyParts])
  {
   if ([part isKindOfClass:[CurrencyConvertor_ConversionRateResponse class]])
   {
     CurrencyConvertor_ConversionRateResponse *resp = (CurrencyConvertor_ConversionRateResponse*)part;
     conversionRate = [[resp ConversionRateResult] floatValue];
   }
  }

  return conversionRate;
}

@end
