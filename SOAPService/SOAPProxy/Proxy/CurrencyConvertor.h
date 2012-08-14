#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class CurrencyConvertor_ConversionRate;
@class CurrencyConvertor_ConversionRateResponse;
typedef enum {
	CurrencyConvertor_Currency_none = 0,
	CurrencyConvertor_Currency_AFA,
	CurrencyConvertor_Currency_ALL,
	CurrencyConvertor_Currency_DZD,
	CurrencyConvertor_Currency_ARS,
	CurrencyConvertor_Currency_AWG,
	CurrencyConvertor_Currency_AUD,
	CurrencyConvertor_Currency_BSD,
	CurrencyConvertor_Currency_BHD,
	CurrencyConvertor_Currency_BDT,
	CurrencyConvertor_Currency_BBD,
	CurrencyConvertor_Currency_BZD,
	CurrencyConvertor_Currency_BMD,
	CurrencyConvertor_Currency_BTN,
	CurrencyConvertor_Currency_BOB,
	CurrencyConvertor_Currency_BWP,
	CurrencyConvertor_Currency_BRL,
	CurrencyConvertor_Currency_GBP,
	CurrencyConvertor_Currency_BND,
	CurrencyConvertor_Currency_BIF,
	CurrencyConvertor_Currency_XOF,
	CurrencyConvertor_Currency_XAF,
	CurrencyConvertor_Currency_KHR,
	CurrencyConvertor_Currency_CAD,
	CurrencyConvertor_Currency_CVE,
	CurrencyConvertor_Currency_KYD,
	CurrencyConvertor_Currency_CLP,
	CurrencyConvertor_Currency_CNY,
	CurrencyConvertor_Currency_COP,
	CurrencyConvertor_Currency_KMF,
	CurrencyConvertor_Currency_CRC,
	CurrencyConvertor_Currency_HRK,
	CurrencyConvertor_Currency_CUP,
	CurrencyConvertor_Currency_CYP,
	CurrencyConvertor_Currency_CZK,
	CurrencyConvertor_Currency_DKK,
	CurrencyConvertor_Currency_DJF,
	CurrencyConvertor_Currency_DOP,
	CurrencyConvertor_Currency_XCD,
	CurrencyConvertor_Currency_EGP,
	CurrencyConvertor_Currency_SVC,
	CurrencyConvertor_Currency_EEK,
	CurrencyConvertor_Currency_ETB,
	CurrencyConvertor_Currency_EUR,
	CurrencyConvertor_Currency_FKP,
	CurrencyConvertor_Currency_GMD,
	CurrencyConvertor_Currency_GHC,
	CurrencyConvertor_Currency_GIP,
	CurrencyConvertor_Currency_XAU,
	CurrencyConvertor_Currency_GTQ,
	CurrencyConvertor_Currency_GNF,
	CurrencyConvertor_Currency_GYD,
	CurrencyConvertor_Currency_HTG,
	CurrencyConvertor_Currency_HNL,
	CurrencyConvertor_Currency_HKD,
	CurrencyConvertor_Currency_HUF,
	CurrencyConvertor_Currency_ISK,
	CurrencyConvertor_Currency_INR,
	CurrencyConvertor_Currency_IDR,
	CurrencyConvertor_Currency_IQD,
	CurrencyConvertor_Currency_ILS,
	CurrencyConvertor_Currency_JMD,
	CurrencyConvertor_Currency_JPY,
	CurrencyConvertor_Currency_JOD,
	CurrencyConvertor_Currency_KZT,
	CurrencyConvertor_Currency_KES,
	CurrencyConvertor_Currency_KRW,
	CurrencyConvertor_Currency_KWD,
	CurrencyConvertor_Currency_LAK,
	CurrencyConvertor_Currency_LVL,
	CurrencyConvertor_Currency_LBP,
	CurrencyConvertor_Currency_LSL,
	CurrencyConvertor_Currency_LRD,
	CurrencyConvertor_Currency_LYD,
	CurrencyConvertor_Currency_LTL,
	CurrencyConvertor_Currency_MOP,
	CurrencyConvertor_Currency_MKD,
	CurrencyConvertor_Currency_MGF,
	CurrencyConvertor_Currency_MWK,
	CurrencyConvertor_Currency_MYR,
	CurrencyConvertor_Currency_MVR,
	CurrencyConvertor_Currency_MTL,
	CurrencyConvertor_Currency_MRO,
	CurrencyConvertor_Currency_MUR,
	CurrencyConvertor_Currency_MXN,
	CurrencyConvertor_Currency_MDL,
	CurrencyConvertor_Currency_MNT,
	CurrencyConvertor_Currency_MAD,
	CurrencyConvertor_Currency_MZM,
	CurrencyConvertor_Currency_MMK,
	CurrencyConvertor_Currency_NAD,
	CurrencyConvertor_Currency_NPR,
	CurrencyConvertor_Currency_ANG,
	CurrencyConvertor_Currency_NZD,
	CurrencyConvertor_Currency_NIO,
	CurrencyConvertor_Currency_NGN,
	CurrencyConvertor_Currency_KPW,
	CurrencyConvertor_Currency_NOK,
	CurrencyConvertor_Currency_OMR,
	CurrencyConvertor_Currency_XPF,
	CurrencyConvertor_Currency_PKR,
	CurrencyConvertor_Currency_XPD,
	CurrencyConvertor_Currency_PAB,
	CurrencyConvertor_Currency_PGK,
	CurrencyConvertor_Currency_PYG,
	CurrencyConvertor_Currency_PEN,
	CurrencyConvertor_Currency_PHP,
	CurrencyConvertor_Currency_XPT,
	CurrencyConvertor_Currency_PLN,
	CurrencyConvertor_Currency_QAR,
	CurrencyConvertor_Currency_ROL,
	CurrencyConvertor_Currency_RUB,
	CurrencyConvertor_Currency_WST,
	CurrencyConvertor_Currency_STD,
	CurrencyConvertor_Currency_SAR,
	CurrencyConvertor_Currency_SCR,
	CurrencyConvertor_Currency_SLL,
	CurrencyConvertor_Currency_XAG,
	CurrencyConvertor_Currency_SGD,
	CurrencyConvertor_Currency_SKK,
	CurrencyConvertor_Currency_SIT,
	CurrencyConvertor_Currency_SBD,
	CurrencyConvertor_Currency_SOS,
	CurrencyConvertor_Currency_ZAR,
	CurrencyConvertor_Currency_LKR,
	CurrencyConvertor_Currency_SHP,
	CurrencyConvertor_Currency_SDD,
	CurrencyConvertor_Currency_SRG,
	CurrencyConvertor_Currency_SZL,
	CurrencyConvertor_Currency_SEK,
	CurrencyConvertor_Currency_CHF,
	CurrencyConvertor_Currency_SYP,
	CurrencyConvertor_Currency_TWD,
	CurrencyConvertor_Currency_TZS,
	CurrencyConvertor_Currency_THB,
	CurrencyConvertor_Currency_TOP,
	CurrencyConvertor_Currency_TTD,
	CurrencyConvertor_Currency_TND,
	CurrencyConvertor_Currency_TRL,
	CurrencyConvertor_Currency_USD,
	CurrencyConvertor_Currency_AED,
	CurrencyConvertor_Currency_UGX,
	CurrencyConvertor_Currency_UAH,
	CurrencyConvertor_Currency_UYU,
	CurrencyConvertor_Currency_VUV,
	CurrencyConvertor_Currency_VEB,
	CurrencyConvertor_Currency_VND,
	CurrencyConvertor_Currency_YER,
	CurrencyConvertor_Currency_YUM,
	CurrencyConvertor_Currency_ZMK,
	CurrencyConvertor_Currency_ZWD,
	CurrencyConvertor_Currency_TRY,
} CurrencyConvertor_Currency;
CurrencyConvertor_Currency CurrencyConvertor_Currency_enumFromString(NSString *string);
NSString * CurrencyConvertor_Currency_stringFromEnum(CurrencyConvertor_Currency enumValue);
@interface CurrencyConvertor_ConversionRate : NSObject {
	
/* elements */
	CurrencyConvertor_Currency FromCurrency;
	CurrencyConvertor_Currency ToCurrency;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (CurrencyConvertor_ConversionRate *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (assign) CurrencyConvertor_Currency FromCurrency;
@property (assign) CurrencyConvertor_Currency ToCurrency;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface CurrencyConvertor_ConversionRateResponse : NSObject {
	
/* elements */
	NSNumber * ConversionRateResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (CurrencyConvertor_ConversionRateResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * ConversionRateResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "CurrencyConvertor.h"
@class CurrencyConvertorSoapBinding;
@class CurrencyConvertorSoap12Binding;
@interface CurrencyConvertor : NSObject {
	
}
+ (CurrencyConvertorSoapBinding *)CurrencyConvertorSoapBinding;
+ (CurrencyConvertorSoap12Binding *)CurrencyConvertorSoap12Binding;
@end
@class CurrencyConvertorSoapBindingResponse;
@class CurrencyConvertorSoapBindingOperation;
@protocol CurrencyConvertorSoapBindingResponseDelegate <NSObject>
- (void) operation:(CurrencyConvertorSoapBindingOperation *)operation completedWithResponse:(CurrencyConvertorSoapBindingResponse *)response;
@end
@interface CurrencyConvertorSoapBinding : NSObject <CurrencyConvertorSoapBindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(CurrencyConvertorSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (CurrencyConvertorSoapBindingResponse *)ConversionRateUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters ;
- (void)ConversionRateAsyncUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters  delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)responseDelegate;
@end
@interface CurrencyConvertorSoapBindingOperation : NSOperation {
	CurrencyConvertorSoapBinding *binding;
	CurrencyConvertorSoapBindingResponse *response;
	id<CurrencyConvertorSoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) CurrencyConvertorSoapBinding *binding;
@property (readonly) CurrencyConvertorSoapBindingResponse *response;
@property (nonatomic, assign) id<CurrencyConvertorSoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(CurrencyConvertorSoapBinding *)aBinding delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)aDelegate;
@end
@interface CurrencyConvertorSoapBinding_ConversionRate : CurrencyConvertorSoapBindingOperation {
	CurrencyConvertor_ConversionRate * parameters;
}
@property (retain) CurrencyConvertor_ConversionRate * parameters;
- (id)initWithBinding:(CurrencyConvertorSoapBinding *)aBinding delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)aDelegate
	parameters:(CurrencyConvertor_ConversionRate *)aParameters
;
@end
@interface CurrencyConvertorSoapBinding_envelope : NSObject {
}
+ (CurrencyConvertorSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface CurrencyConvertorSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
@class CurrencyConvertorSoap12BindingResponse;
@class CurrencyConvertorSoap12BindingOperation;
@protocol CurrencyConvertorSoap12BindingResponseDelegate <NSObject>
- (void) operation:(CurrencyConvertorSoap12BindingOperation *)operation completedWithResponse:(CurrencyConvertorSoap12BindingResponse *)response;
@end
@interface CurrencyConvertorSoap12Binding : NSObject <CurrencyConvertorSoap12BindingResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(CurrencyConvertorSoap12BindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (CurrencyConvertorSoap12BindingResponse *)ConversionRateUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters ;
- (void)ConversionRateAsyncUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters  delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)responseDelegate;
@end
@interface CurrencyConvertorSoap12BindingOperation : NSOperation {
	CurrencyConvertorSoap12Binding *binding;
	CurrencyConvertorSoap12BindingResponse *response;
	id<CurrencyConvertorSoap12BindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) CurrencyConvertorSoap12Binding *binding;
@property (readonly) CurrencyConvertorSoap12BindingResponse *response;
@property (nonatomic, assign) id<CurrencyConvertorSoap12BindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(CurrencyConvertorSoap12Binding *)aBinding delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)aDelegate;
@end
@interface CurrencyConvertorSoap12Binding_ConversionRate : CurrencyConvertorSoap12BindingOperation {
	CurrencyConvertor_ConversionRate * parameters;
}
@property (retain) CurrencyConvertor_ConversionRate * parameters;
- (id)initWithBinding:(CurrencyConvertorSoap12Binding *)aBinding delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)aDelegate
	parameters:(CurrencyConvertor_ConversionRate *)aParameters
;
@end
@interface CurrencyConvertorSoap12Binding_envelope : NSObject {
}
+ (CurrencyConvertorSoap12Binding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface CurrencyConvertorSoap12BindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
