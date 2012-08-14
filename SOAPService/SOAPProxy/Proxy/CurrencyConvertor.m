#import "CurrencyConvertor.h"
#import <libxml/xmlstring.h>
#if TARGET_OS_IPHONE
#import <CFNetwork/CFNetwork.h>
#endif
CurrencyConvertor_Currency CurrencyConvertor_Currency_enumFromString(NSString *string)
{
	if([string isEqualToString:@"AFA"]) {
		return CurrencyConvertor_Currency_AFA;
	}
	if([string isEqualToString:@"ALL"]) {
		return CurrencyConvertor_Currency_ALL;
	}
	if([string isEqualToString:@"DZD"]) {
		return CurrencyConvertor_Currency_DZD;
	}
	if([string isEqualToString:@"ARS"]) {
		return CurrencyConvertor_Currency_ARS;
	}
	if([string isEqualToString:@"AWG"]) {
		return CurrencyConvertor_Currency_AWG;
	}
	if([string isEqualToString:@"AUD"]) {
		return CurrencyConvertor_Currency_AUD;
	}
	if([string isEqualToString:@"BSD"]) {
		return CurrencyConvertor_Currency_BSD;
	}
	if([string isEqualToString:@"BHD"]) {
		return CurrencyConvertor_Currency_BHD;
	}
	if([string isEqualToString:@"BDT"]) {
		return CurrencyConvertor_Currency_BDT;
	}
	if([string isEqualToString:@"BBD"]) {
		return CurrencyConvertor_Currency_BBD;
	}
	if([string isEqualToString:@"BZD"]) {
		return CurrencyConvertor_Currency_BZD;
	}
	if([string isEqualToString:@"BMD"]) {
		return CurrencyConvertor_Currency_BMD;
	}
	if([string isEqualToString:@"BTN"]) {
		return CurrencyConvertor_Currency_BTN;
	}
	if([string isEqualToString:@"BOB"]) {
		return CurrencyConvertor_Currency_BOB;
	}
	if([string isEqualToString:@"BWP"]) {
		return CurrencyConvertor_Currency_BWP;
	}
	if([string isEqualToString:@"BRL"]) {
		return CurrencyConvertor_Currency_BRL;
	}
	if([string isEqualToString:@"GBP"]) {
		return CurrencyConvertor_Currency_GBP;
	}
	if([string isEqualToString:@"BND"]) {
		return CurrencyConvertor_Currency_BND;
	}
	if([string isEqualToString:@"BIF"]) {
		return CurrencyConvertor_Currency_BIF;
	}
	if([string isEqualToString:@"XOF"]) {
		return CurrencyConvertor_Currency_XOF;
	}
	if([string isEqualToString:@"XAF"]) {
		return CurrencyConvertor_Currency_XAF;
	}
	if([string isEqualToString:@"KHR"]) {
		return CurrencyConvertor_Currency_KHR;
	}
	if([string isEqualToString:@"CAD"]) {
		return CurrencyConvertor_Currency_CAD;
	}
	if([string isEqualToString:@"CVE"]) {
		return CurrencyConvertor_Currency_CVE;
	}
	if([string isEqualToString:@"KYD"]) {
		return CurrencyConvertor_Currency_KYD;
	}
	if([string isEqualToString:@"CLP"]) {
		return CurrencyConvertor_Currency_CLP;
	}
	if([string isEqualToString:@"CNY"]) {
		return CurrencyConvertor_Currency_CNY;
	}
	if([string isEqualToString:@"COP"]) {
		return CurrencyConvertor_Currency_COP;
	}
	if([string isEqualToString:@"KMF"]) {
		return CurrencyConvertor_Currency_KMF;
	}
	if([string isEqualToString:@"CRC"]) {
		return CurrencyConvertor_Currency_CRC;
	}
	if([string isEqualToString:@"HRK"]) {
		return CurrencyConvertor_Currency_HRK;
	}
	if([string isEqualToString:@"CUP"]) {
		return CurrencyConvertor_Currency_CUP;
	}
	if([string isEqualToString:@"CYP"]) {
		return CurrencyConvertor_Currency_CYP;
	}
	if([string isEqualToString:@"CZK"]) {
		return CurrencyConvertor_Currency_CZK;
	}
	if([string isEqualToString:@"DKK"]) {
		return CurrencyConvertor_Currency_DKK;
	}
	if([string isEqualToString:@"DJF"]) {
		return CurrencyConvertor_Currency_DJF;
	}
	if([string isEqualToString:@"DOP"]) {
		return CurrencyConvertor_Currency_DOP;
	}
	if([string isEqualToString:@"XCD"]) {
		return CurrencyConvertor_Currency_XCD;
	}
	if([string isEqualToString:@"EGP"]) {
		return CurrencyConvertor_Currency_EGP;
	}
	if([string isEqualToString:@"SVC"]) {
		return CurrencyConvertor_Currency_SVC;
	}
	if([string isEqualToString:@"EEK"]) {
		return CurrencyConvertor_Currency_EEK;
	}
	if([string isEqualToString:@"ETB"]) {
		return CurrencyConvertor_Currency_ETB;
	}
	if([string isEqualToString:@"EUR"]) {
		return CurrencyConvertor_Currency_EUR;
	}
	if([string isEqualToString:@"FKP"]) {
		return CurrencyConvertor_Currency_FKP;
	}
	if([string isEqualToString:@"GMD"]) {
		return CurrencyConvertor_Currency_GMD;
	}
	if([string isEqualToString:@"GHC"]) {
		return CurrencyConvertor_Currency_GHC;
	}
	if([string isEqualToString:@"GIP"]) {
		return CurrencyConvertor_Currency_GIP;
	}
	if([string isEqualToString:@"XAU"]) {
		return CurrencyConvertor_Currency_XAU;
	}
	if([string isEqualToString:@"GTQ"]) {
		return CurrencyConvertor_Currency_GTQ;
	}
	if([string isEqualToString:@"GNF"]) {
		return CurrencyConvertor_Currency_GNF;
	}
	if([string isEqualToString:@"GYD"]) {
		return CurrencyConvertor_Currency_GYD;
	}
	if([string isEqualToString:@"HTG"]) {
		return CurrencyConvertor_Currency_HTG;
	}
	if([string isEqualToString:@"HNL"]) {
		return CurrencyConvertor_Currency_HNL;
	}
	if([string isEqualToString:@"HKD"]) {
		return CurrencyConvertor_Currency_HKD;
	}
	if([string isEqualToString:@"HUF"]) {
		return CurrencyConvertor_Currency_HUF;
	}
	if([string isEqualToString:@"ISK"]) {
		return CurrencyConvertor_Currency_ISK;
	}
	if([string isEqualToString:@"INR"]) {
		return CurrencyConvertor_Currency_INR;
	}
	if([string isEqualToString:@"IDR"]) {
		return CurrencyConvertor_Currency_IDR;
	}
	if([string isEqualToString:@"IQD"]) {
		return CurrencyConvertor_Currency_IQD;
	}
	if([string isEqualToString:@"ILS"]) {
		return CurrencyConvertor_Currency_ILS;
	}
	if([string isEqualToString:@"JMD"]) {
		return CurrencyConvertor_Currency_JMD;
	}
	if([string isEqualToString:@"JPY"]) {
		return CurrencyConvertor_Currency_JPY;
	}
	if([string isEqualToString:@"JOD"]) {
		return CurrencyConvertor_Currency_JOD;
	}
	if([string isEqualToString:@"KZT"]) {
		return CurrencyConvertor_Currency_KZT;
	}
	if([string isEqualToString:@"KES"]) {
		return CurrencyConvertor_Currency_KES;
	}
	if([string isEqualToString:@"KRW"]) {
		return CurrencyConvertor_Currency_KRW;
	}
	if([string isEqualToString:@"KWD"]) {
		return CurrencyConvertor_Currency_KWD;
	}
	if([string isEqualToString:@"LAK"]) {
		return CurrencyConvertor_Currency_LAK;
	}
	if([string isEqualToString:@"LVL"]) {
		return CurrencyConvertor_Currency_LVL;
	}
	if([string isEqualToString:@"LBP"]) {
		return CurrencyConvertor_Currency_LBP;
	}
	if([string isEqualToString:@"LSL"]) {
		return CurrencyConvertor_Currency_LSL;
	}
	if([string isEqualToString:@"LRD"]) {
		return CurrencyConvertor_Currency_LRD;
	}
	if([string isEqualToString:@"LYD"]) {
		return CurrencyConvertor_Currency_LYD;
	}
	if([string isEqualToString:@"LTL"]) {
		return CurrencyConvertor_Currency_LTL;
	}
	if([string isEqualToString:@"MOP"]) {
		return CurrencyConvertor_Currency_MOP;
	}
	if([string isEqualToString:@"MKD"]) {
		return CurrencyConvertor_Currency_MKD;
	}
	if([string isEqualToString:@"MGF"]) {
		return CurrencyConvertor_Currency_MGF;
	}
	if([string isEqualToString:@"MWK"]) {
		return CurrencyConvertor_Currency_MWK;
	}
	if([string isEqualToString:@"MYR"]) {
		return CurrencyConvertor_Currency_MYR;
	}
	if([string isEqualToString:@"MVR"]) {
		return CurrencyConvertor_Currency_MVR;
	}
	if([string isEqualToString:@"MTL"]) {
		return CurrencyConvertor_Currency_MTL;
	}
	if([string isEqualToString:@"MRO"]) {
		return CurrencyConvertor_Currency_MRO;
	}
	if([string isEqualToString:@"MUR"]) {
		return CurrencyConvertor_Currency_MUR;
	}
	if([string isEqualToString:@"MXN"]) {
		return CurrencyConvertor_Currency_MXN;
	}
	if([string isEqualToString:@"MDL"]) {
		return CurrencyConvertor_Currency_MDL;
	}
	if([string isEqualToString:@"MNT"]) {
		return CurrencyConvertor_Currency_MNT;
	}
	if([string isEqualToString:@"MAD"]) {
		return CurrencyConvertor_Currency_MAD;
	}
	if([string isEqualToString:@"MZM"]) {
		return CurrencyConvertor_Currency_MZM;
	}
	if([string isEqualToString:@"MMK"]) {
		return CurrencyConvertor_Currency_MMK;
	}
	if([string isEqualToString:@"NAD"]) {
		return CurrencyConvertor_Currency_NAD;
	}
	if([string isEqualToString:@"NPR"]) {
		return CurrencyConvertor_Currency_NPR;
	}
	if([string isEqualToString:@"ANG"]) {
		return CurrencyConvertor_Currency_ANG;
	}
	if([string isEqualToString:@"NZD"]) {
		return CurrencyConvertor_Currency_NZD;
	}
	if([string isEqualToString:@"NIO"]) {
		return CurrencyConvertor_Currency_NIO;
	}
	if([string isEqualToString:@"NGN"]) {
		return CurrencyConvertor_Currency_NGN;
	}
	if([string isEqualToString:@"KPW"]) {
		return CurrencyConvertor_Currency_KPW;
	}
	if([string isEqualToString:@"NOK"]) {
		return CurrencyConvertor_Currency_NOK;
	}
	if([string isEqualToString:@"OMR"]) {
		return CurrencyConvertor_Currency_OMR;
	}
	if([string isEqualToString:@"XPF"]) {
		return CurrencyConvertor_Currency_XPF;
	}
	if([string isEqualToString:@"PKR"]) {
		return CurrencyConvertor_Currency_PKR;
	}
	if([string isEqualToString:@"XPD"]) {
		return CurrencyConvertor_Currency_XPD;
	}
	if([string isEqualToString:@"PAB"]) {
		return CurrencyConvertor_Currency_PAB;
	}
	if([string isEqualToString:@"PGK"]) {
		return CurrencyConvertor_Currency_PGK;
	}
	if([string isEqualToString:@"PYG"]) {
		return CurrencyConvertor_Currency_PYG;
	}
	if([string isEqualToString:@"PEN"]) {
		return CurrencyConvertor_Currency_PEN;
	}
	if([string isEqualToString:@"PHP"]) {
		return CurrencyConvertor_Currency_PHP;
	}
	if([string isEqualToString:@"XPT"]) {
		return CurrencyConvertor_Currency_XPT;
	}
	if([string isEqualToString:@"PLN"]) {
		return CurrencyConvertor_Currency_PLN;
	}
	if([string isEqualToString:@"QAR"]) {
		return CurrencyConvertor_Currency_QAR;
	}
	if([string isEqualToString:@"ROL"]) {
		return CurrencyConvertor_Currency_ROL;
	}
	if([string isEqualToString:@"RUB"]) {
		return CurrencyConvertor_Currency_RUB;
	}
	if([string isEqualToString:@"WST"]) {
		return CurrencyConvertor_Currency_WST;
	}
	if([string isEqualToString:@"STD"]) {
		return CurrencyConvertor_Currency_STD;
	}
	if([string isEqualToString:@"SAR"]) {
		return CurrencyConvertor_Currency_SAR;
	}
	if([string isEqualToString:@"SCR"]) {
		return CurrencyConvertor_Currency_SCR;
	}
	if([string isEqualToString:@"SLL"]) {
		return CurrencyConvertor_Currency_SLL;
	}
	if([string isEqualToString:@"XAG"]) {
		return CurrencyConvertor_Currency_XAG;
	}
	if([string isEqualToString:@"SGD"]) {
		return CurrencyConvertor_Currency_SGD;
	}
	if([string isEqualToString:@"SKK"]) {
		return CurrencyConvertor_Currency_SKK;
	}
	if([string isEqualToString:@"SIT"]) {
		return CurrencyConvertor_Currency_SIT;
	}
	if([string isEqualToString:@"SBD"]) {
		return CurrencyConvertor_Currency_SBD;
	}
	if([string isEqualToString:@"SOS"]) {
		return CurrencyConvertor_Currency_SOS;
	}
	if([string isEqualToString:@"ZAR"]) {
		return CurrencyConvertor_Currency_ZAR;
	}
	if([string isEqualToString:@"LKR"]) {
		return CurrencyConvertor_Currency_LKR;
	}
	if([string isEqualToString:@"SHP"]) {
		return CurrencyConvertor_Currency_SHP;
	}
	if([string isEqualToString:@"SDD"]) {
		return CurrencyConvertor_Currency_SDD;
	}
	if([string isEqualToString:@"SRG"]) {
		return CurrencyConvertor_Currency_SRG;
	}
	if([string isEqualToString:@"SZL"]) {
		return CurrencyConvertor_Currency_SZL;
	}
	if([string isEqualToString:@"SEK"]) {
		return CurrencyConvertor_Currency_SEK;
	}
	if([string isEqualToString:@"CHF"]) {
		return CurrencyConvertor_Currency_CHF;
	}
	if([string isEqualToString:@"SYP"]) {
		return CurrencyConvertor_Currency_SYP;
	}
	if([string isEqualToString:@"TWD"]) {
		return CurrencyConvertor_Currency_TWD;
	}
	if([string isEqualToString:@"TZS"]) {
		return CurrencyConvertor_Currency_TZS;
	}
	if([string isEqualToString:@"THB"]) {
		return CurrencyConvertor_Currency_THB;
	}
	if([string isEqualToString:@"TOP"]) {
		return CurrencyConvertor_Currency_TOP;
	}
	if([string isEqualToString:@"TTD"]) {
		return CurrencyConvertor_Currency_TTD;
	}
	if([string isEqualToString:@"TND"]) {
		return CurrencyConvertor_Currency_TND;
	}
	if([string isEqualToString:@"TRL"]) {
		return CurrencyConvertor_Currency_TRL;
	}
	if([string isEqualToString:@"USD"]) {
		return CurrencyConvertor_Currency_USD;
	}
	if([string isEqualToString:@"AED"]) {
		return CurrencyConvertor_Currency_AED;
	}
	if([string isEqualToString:@"UGX"]) {
		return CurrencyConvertor_Currency_UGX;
	}
	if([string isEqualToString:@"UAH"]) {
		return CurrencyConvertor_Currency_UAH;
	}
	if([string isEqualToString:@"UYU"]) {
		return CurrencyConvertor_Currency_UYU;
	}
	if([string isEqualToString:@"VUV"]) {
		return CurrencyConvertor_Currency_VUV;
	}
	if([string isEqualToString:@"VEB"]) {
		return CurrencyConvertor_Currency_VEB;
	}
	if([string isEqualToString:@"VND"]) {
		return CurrencyConvertor_Currency_VND;
	}
	if([string isEqualToString:@"YER"]) {
		return CurrencyConvertor_Currency_YER;
	}
	if([string isEqualToString:@"YUM"]) {
		return CurrencyConvertor_Currency_YUM;
	}
	if([string isEqualToString:@"ZMK"]) {
		return CurrencyConvertor_Currency_ZMK;
	}
	if([string isEqualToString:@"ZWD"]) {
		return CurrencyConvertor_Currency_ZWD;
	}
	if([string isEqualToString:@"TRY"]) {
		return CurrencyConvertor_Currency_TRY;
	}
	
	return CurrencyConvertor_Currency_none;
}
NSString * CurrencyConvertor_Currency_stringFromEnum(CurrencyConvertor_Currency enumValue)
{
	switch (enumValue) {
		case CurrencyConvertor_Currency_AFA:
			return @"AFA";
			break;
		case CurrencyConvertor_Currency_ALL:
			return @"ALL";
			break;
		case CurrencyConvertor_Currency_DZD:
			return @"DZD";
			break;
		case CurrencyConvertor_Currency_ARS:
			return @"ARS";
			break;
		case CurrencyConvertor_Currency_AWG:
			return @"AWG";
			break;
		case CurrencyConvertor_Currency_AUD:
			return @"AUD";
			break;
		case CurrencyConvertor_Currency_BSD:
			return @"BSD";
			break;
		case CurrencyConvertor_Currency_BHD:
			return @"BHD";
			break;
		case CurrencyConvertor_Currency_BDT:
			return @"BDT";
			break;
		case CurrencyConvertor_Currency_BBD:
			return @"BBD";
			break;
		case CurrencyConvertor_Currency_BZD:
			return @"BZD";
			break;
		case CurrencyConvertor_Currency_BMD:
			return @"BMD";
			break;
		case CurrencyConvertor_Currency_BTN:
			return @"BTN";
			break;
		case CurrencyConvertor_Currency_BOB:
			return @"BOB";
			break;
		case CurrencyConvertor_Currency_BWP:
			return @"BWP";
			break;
		case CurrencyConvertor_Currency_BRL:
			return @"BRL";
			break;
		case CurrencyConvertor_Currency_GBP:
			return @"GBP";
			break;
		case CurrencyConvertor_Currency_BND:
			return @"BND";
			break;
		case CurrencyConvertor_Currency_BIF:
			return @"BIF";
			break;
		case CurrencyConvertor_Currency_XOF:
			return @"XOF";
			break;
		case CurrencyConvertor_Currency_XAF:
			return @"XAF";
			break;
		case CurrencyConvertor_Currency_KHR:
			return @"KHR";
			break;
		case CurrencyConvertor_Currency_CAD:
			return @"CAD";
			break;
		case CurrencyConvertor_Currency_CVE:
			return @"CVE";
			break;
		case CurrencyConvertor_Currency_KYD:
			return @"KYD";
			break;
		case CurrencyConvertor_Currency_CLP:
			return @"CLP";
			break;
		case CurrencyConvertor_Currency_CNY:
			return @"CNY";
			break;
		case CurrencyConvertor_Currency_COP:
			return @"COP";
			break;
		case CurrencyConvertor_Currency_KMF:
			return @"KMF";
			break;
		case CurrencyConvertor_Currency_CRC:
			return @"CRC";
			break;
		case CurrencyConvertor_Currency_HRK:
			return @"HRK";
			break;
		case CurrencyConvertor_Currency_CUP:
			return @"CUP";
			break;
		case CurrencyConvertor_Currency_CYP:
			return @"CYP";
			break;
		case CurrencyConvertor_Currency_CZK:
			return @"CZK";
			break;
		case CurrencyConvertor_Currency_DKK:
			return @"DKK";
			break;
		case CurrencyConvertor_Currency_DJF:
			return @"DJF";
			break;
		case CurrencyConvertor_Currency_DOP:
			return @"DOP";
			break;
		case CurrencyConvertor_Currency_XCD:
			return @"XCD";
			break;
		case CurrencyConvertor_Currency_EGP:
			return @"EGP";
			break;
		case CurrencyConvertor_Currency_SVC:
			return @"SVC";
			break;
		case CurrencyConvertor_Currency_EEK:
			return @"EEK";
			break;
		case CurrencyConvertor_Currency_ETB:
			return @"ETB";
			break;
		case CurrencyConvertor_Currency_EUR:
			return @"EUR";
			break;
		case CurrencyConvertor_Currency_FKP:
			return @"FKP";
			break;
		case CurrencyConvertor_Currency_GMD:
			return @"GMD";
			break;
		case CurrencyConvertor_Currency_GHC:
			return @"GHC";
			break;
		case CurrencyConvertor_Currency_GIP:
			return @"GIP";
			break;
		case CurrencyConvertor_Currency_XAU:
			return @"XAU";
			break;
		case CurrencyConvertor_Currency_GTQ:
			return @"GTQ";
			break;
		case CurrencyConvertor_Currency_GNF:
			return @"GNF";
			break;
		case CurrencyConvertor_Currency_GYD:
			return @"GYD";
			break;
		case CurrencyConvertor_Currency_HTG:
			return @"HTG";
			break;
		case CurrencyConvertor_Currency_HNL:
			return @"HNL";
			break;
		case CurrencyConvertor_Currency_HKD:
			return @"HKD";
			break;
		case CurrencyConvertor_Currency_HUF:
			return @"HUF";
			break;
		case CurrencyConvertor_Currency_ISK:
			return @"ISK";
			break;
		case CurrencyConvertor_Currency_INR:
			return @"INR";
			break;
		case CurrencyConvertor_Currency_IDR:
			return @"IDR";
			break;
		case CurrencyConvertor_Currency_IQD:
			return @"IQD";
			break;
		case CurrencyConvertor_Currency_ILS:
			return @"ILS";
			break;
		case CurrencyConvertor_Currency_JMD:
			return @"JMD";
			break;
		case CurrencyConvertor_Currency_JPY:
			return @"JPY";
			break;
		case CurrencyConvertor_Currency_JOD:
			return @"JOD";
			break;
		case CurrencyConvertor_Currency_KZT:
			return @"KZT";
			break;
		case CurrencyConvertor_Currency_KES:
			return @"KES";
			break;
		case CurrencyConvertor_Currency_KRW:
			return @"KRW";
			break;
		case CurrencyConvertor_Currency_KWD:
			return @"KWD";
			break;
		case CurrencyConvertor_Currency_LAK:
			return @"LAK";
			break;
		case CurrencyConvertor_Currency_LVL:
			return @"LVL";
			break;
		case CurrencyConvertor_Currency_LBP:
			return @"LBP";
			break;
		case CurrencyConvertor_Currency_LSL:
			return @"LSL";
			break;
		case CurrencyConvertor_Currency_LRD:
			return @"LRD";
			break;
		case CurrencyConvertor_Currency_LYD:
			return @"LYD";
			break;
		case CurrencyConvertor_Currency_LTL:
			return @"LTL";
			break;
		case CurrencyConvertor_Currency_MOP:
			return @"MOP";
			break;
		case CurrencyConvertor_Currency_MKD:
			return @"MKD";
			break;
		case CurrencyConvertor_Currency_MGF:
			return @"MGF";
			break;
		case CurrencyConvertor_Currency_MWK:
			return @"MWK";
			break;
		case CurrencyConvertor_Currency_MYR:
			return @"MYR";
			break;
		case CurrencyConvertor_Currency_MVR:
			return @"MVR";
			break;
		case CurrencyConvertor_Currency_MTL:
			return @"MTL";
			break;
		case CurrencyConvertor_Currency_MRO:
			return @"MRO";
			break;
		case CurrencyConvertor_Currency_MUR:
			return @"MUR";
			break;
		case CurrencyConvertor_Currency_MXN:
			return @"MXN";
			break;
		case CurrencyConvertor_Currency_MDL:
			return @"MDL";
			break;
		case CurrencyConvertor_Currency_MNT:
			return @"MNT";
			break;
		case CurrencyConvertor_Currency_MAD:
			return @"MAD";
			break;
		case CurrencyConvertor_Currency_MZM:
			return @"MZM";
			break;
		case CurrencyConvertor_Currency_MMK:
			return @"MMK";
			break;
		case CurrencyConvertor_Currency_NAD:
			return @"NAD";
			break;
		case CurrencyConvertor_Currency_NPR:
			return @"NPR";
			break;
		case CurrencyConvertor_Currency_ANG:
			return @"ANG";
			break;
		case CurrencyConvertor_Currency_NZD:
			return @"NZD";
			break;
		case CurrencyConvertor_Currency_NIO:
			return @"NIO";
			break;
		case CurrencyConvertor_Currency_NGN:
			return @"NGN";
			break;
		case CurrencyConvertor_Currency_KPW:
			return @"KPW";
			break;
		case CurrencyConvertor_Currency_NOK:
			return @"NOK";
			break;
		case CurrencyConvertor_Currency_OMR:
			return @"OMR";
			break;
		case CurrencyConvertor_Currency_XPF:
			return @"XPF";
			break;
		case CurrencyConvertor_Currency_PKR:
			return @"PKR";
			break;
		case CurrencyConvertor_Currency_XPD:
			return @"XPD";
			break;
		case CurrencyConvertor_Currency_PAB:
			return @"PAB";
			break;
		case CurrencyConvertor_Currency_PGK:
			return @"PGK";
			break;
		case CurrencyConvertor_Currency_PYG:
			return @"PYG";
			break;
		case CurrencyConvertor_Currency_PEN:
			return @"PEN";
			break;
		case CurrencyConvertor_Currency_PHP:
			return @"PHP";
			break;
		case CurrencyConvertor_Currency_XPT:
			return @"XPT";
			break;
		case CurrencyConvertor_Currency_PLN:
			return @"PLN";
			break;
		case CurrencyConvertor_Currency_QAR:
			return @"QAR";
			break;
		case CurrencyConvertor_Currency_ROL:
			return @"ROL";
			break;
		case CurrencyConvertor_Currency_RUB:
			return @"RUB";
			break;
		case CurrencyConvertor_Currency_WST:
			return @"WST";
			break;
		case CurrencyConvertor_Currency_STD:
			return @"STD";
			break;
		case CurrencyConvertor_Currency_SAR:
			return @"SAR";
			break;
		case CurrencyConvertor_Currency_SCR:
			return @"SCR";
			break;
		case CurrencyConvertor_Currency_SLL:
			return @"SLL";
			break;
		case CurrencyConvertor_Currency_XAG:
			return @"XAG";
			break;
		case CurrencyConvertor_Currency_SGD:
			return @"SGD";
			break;
		case CurrencyConvertor_Currency_SKK:
			return @"SKK";
			break;
		case CurrencyConvertor_Currency_SIT:
			return @"SIT";
			break;
		case CurrencyConvertor_Currency_SBD:
			return @"SBD";
			break;
		case CurrencyConvertor_Currency_SOS:
			return @"SOS";
			break;
		case CurrencyConvertor_Currency_ZAR:
			return @"ZAR";
			break;
		case CurrencyConvertor_Currency_LKR:
			return @"LKR";
			break;
		case CurrencyConvertor_Currency_SHP:
			return @"SHP";
			break;
		case CurrencyConvertor_Currency_SDD:
			return @"SDD";
			break;
		case CurrencyConvertor_Currency_SRG:
			return @"SRG";
			break;
		case CurrencyConvertor_Currency_SZL:
			return @"SZL";
			break;
		case CurrencyConvertor_Currency_SEK:
			return @"SEK";
			break;
		case CurrencyConvertor_Currency_CHF:
			return @"CHF";
			break;
		case CurrencyConvertor_Currency_SYP:
			return @"SYP";
			break;
		case CurrencyConvertor_Currency_TWD:
			return @"TWD";
			break;
		case CurrencyConvertor_Currency_TZS:
			return @"TZS";
			break;
		case CurrencyConvertor_Currency_THB:
			return @"THB";
			break;
		case CurrencyConvertor_Currency_TOP:
			return @"TOP";
			break;
		case CurrencyConvertor_Currency_TTD:
			return @"TTD";
			break;
		case CurrencyConvertor_Currency_TND:
			return @"TND";
			break;
		case CurrencyConvertor_Currency_TRL:
			return @"TRL";
			break;
		case CurrencyConvertor_Currency_USD:
			return @"USD";
			break;
		case CurrencyConvertor_Currency_AED:
			return @"AED";
			break;
		case CurrencyConvertor_Currency_UGX:
			return @"UGX";
			break;
		case CurrencyConvertor_Currency_UAH:
			return @"UAH";
			break;
		case CurrencyConvertor_Currency_UYU:
			return @"UYU";
			break;
		case CurrencyConvertor_Currency_VUV:
			return @"VUV";
			break;
		case CurrencyConvertor_Currency_VEB:
			return @"VEB";
			break;
		case CurrencyConvertor_Currency_VND:
			return @"VND";
			break;
		case CurrencyConvertor_Currency_YER:
			return @"YER";
			break;
		case CurrencyConvertor_Currency_YUM:
			return @"YUM";
			break;
		case CurrencyConvertor_Currency_ZMK:
			return @"ZMK";
			break;
		case CurrencyConvertor_Currency_ZWD:
			return @"ZWD";
			break;
		case CurrencyConvertor_Currency_TRY:
			return @"TRY";
			break;
		default:
			return @"";
	}
}
@implementation CurrencyConvertor_ConversionRate
- (id)init
{
	if((self = [super init])) {
		FromCurrency = 0;
		ToCurrency = 0;
	}
	
	return self;
}
- (void)dealloc
{
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"CurrencyConvertor";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"CurrencyConvertor", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.FromCurrency != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"CurrencyConvertor:FromCurrency", [CurrencyConvertor_Currency_stringFromEnum(self.FromCurrency) xmlString]);
	}
	if(self.ToCurrency != 0) {
		xmlNewChild(node, NULL, (const xmlChar*)"CurrencyConvertor:ToCurrency", [CurrencyConvertor_Currency_stringFromEnum(self.ToCurrency) xmlString]);
	}
}
/* elements */
@synthesize FromCurrency;
@synthesize ToCurrency;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (CurrencyConvertor_ConversionRate *)deserializeNode:(xmlNodePtr)cur
{
	CurrencyConvertor_ConversionRate *newObject = [[CurrencyConvertor_ConversionRate new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "FromCurrency")) {
				
				CurrencyConvertor_Currency enumRepresentation = CurrencyConvertor_Currency_enumFromString(elementString);
				self.FromCurrency = enumRepresentation;
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ToCurrency")) {
				
				CurrencyConvertor_Currency enumRepresentation = CurrencyConvertor_Currency_enumFromString(elementString);
				self.ToCurrency = enumRepresentation;
			}
		}
	}
}
@end
@implementation CurrencyConvertor_ConversionRateResponse
- (id)init
{
	if((self = [super init])) {
		ConversionRateResult = 0;
	}
	
	return self;
}
- (void)dealloc
{
	if(ConversionRateResult != nil) [ConversionRateResult release];
	
	[super dealloc];
}
- (NSString *)nsPrefix
{
	return @"CurrencyConvertor";
}
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix
{
	NSString *nodeName = nil;
	if(elNSPrefix != nil && [elNSPrefix length] > 0)
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", elNSPrefix, elName];
	}
	else
	{
		nodeName = [NSString stringWithFormat:@"%@:%@", @"CurrencyConvertor", elName];
	}
	
	xmlNodePtr node = xmlNewDocNode(doc, NULL, [nodeName xmlString], NULL);
	
	
	[self addAttributesToNode:node];
	
	[self addElementsToNode:node];
	
	return node;
}
- (void)addAttributesToNode:(xmlNodePtr)node
{
	
}
- (void)addElementsToNode:(xmlNodePtr)node
{
	
	if(self.ConversionRateResult != 0) {
		xmlAddChild(node, [self.ConversionRateResult xmlNodeForDoc:node->doc elementName:@"ConversionRateResult" elementNSPrefix:@"CurrencyConvertor"]);
	}
}
/* elements */
@synthesize ConversionRateResult;
/* attributes */
- (NSDictionary *)attributes
{
	NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
	
	return attributes;
}
+ (CurrencyConvertor_ConversionRateResponse *)deserializeNode:(xmlNodePtr)cur
{
	CurrencyConvertor_ConversionRateResponse *newObject = [[CurrencyConvertor_ConversionRateResponse new] autorelease];
	
	[newObject deserializeAttributesFromNode:cur];
	[newObject deserializeElementsFromNode:cur];
	
	return newObject;
}
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur
{
}
- (void)deserializeElementsFromNode:(xmlNodePtr)cur
{
	
	
	for( cur = cur->children ; cur != NULL ; cur = cur->next ) {
		if(cur->type == XML_ELEMENT_NODE) {
			xmlChar *elementText = xmlNodeListGetString(cur->doc, cur->children, 1);
			NSString *elementString = nil;
			
			if(elementText != NULL) {
				elementString = [NSString stringWithCString:(char*)elementText encoding:NSUTF8StringEncoding];
				[elementString self]; // avoid compiler warning for unused var
				xmlFree(elementText);
			}
			if(xmlStrEqual(cur->name, (const xmlChar *) "ConversionRateResult")) {
				
				Class elementClass = nil;
				xmlChar *instanceType = xmlGetNsProp(cur, (const xmlChar *) "type", (const xmlChar *) "http://www.w3.org/2001/XMLSchema-instance");
				if(instanceType == NULL) {
					elementClass = [NSNumber  class];
				} else {
					NSString *elementTypeString = [NSString stringWithCString:(char*)instanceType encoding:NSUTF8StringEncoding];
					
					NSArray *elementTypeArray = [elementTypeString componentsSeparatedByString:@":"];
					
					NSString *elementClassString = nil;
					if([elementTypeArray count] > 1) {
						NSString *prefix = [elementTypeArray objectAtIndex:0];
						NSString *localName = [elementTypeArray objectAtIndex:1];
						
						xmlNsPtr elementNamespace = xmlSearchNs(cur->doc, cur, [prefix xmlString]);
						
						NSString *standardPrefix = [[USGlobals sharedInstance].wsdlStandardNamespaces objectForKey:[NSString stringWithCString:(char*)elementNamespace->href encoding:NSUTF8StringEncoding]];
						
						elementClassString = [NSString stringWithFormat:@"%@_%@", standardPrefix, localName];
					} else {
						elementClassString = [elementTypeString stringByReplacingOccurrencesOfString:@":" withString:@"_" options:0 range:NSMakeRange(0, [elementTypeString length])];
					}
					
					elementClass = NSClassFromString(elementClassString);
					xmlFree(instanceType);
				}
				
				id newChild = [elementClass deserializeNode:cur];
				
				self.ConversionRateResult = newChild;
			}
		}
	}
}
@end
@implementation CurrencyConvertor
+ (void)initialize
{
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"xsd" forKey:@"http://www.w3.org/2001/XMLSchema"];
	[[USGlobals sharedInstance].wsdlStandardNamespaces setObject:@"CurrencyConvertor" forKey:@"http://www.webserviceX.NET/"];
}
+ (CurrencyConvertorSoapBinding *)CurrencyConvertorSoapBinding
{
	return [[[CurrencyConvertorSoapBinding alloc] initWithAddress:@"http://www.webservicex.com/CurrencyConvertor.asmx"] autorelease];
}
+ (CurrencyConvertorSoap12Binding *)CurrencyConvertorSoap12Binding
{
	return [[[CurrencyConvertorSoap12Binding alloc] initWithAddress:@"http://www.webservicex.com/CurrencyConvertor.asmx"] autorelease];
}
@end
@implementation CurrencyConvertorSoapBinding
@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		defaultTimeout = 10;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (CurrencyConvertorSoapBindingResponse *)performSynchronousOperation:(CurrencyConvertorSoapBindingOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(CurrencyConvertorSoapBindingOperation *)operation
{
	[operation start];
}
- (void) operation:(CurrencyConvertorSoapBindingOperation *)operation completedWithResponse:(CurrencyConvertorSoapBindingResponse *)response
{
	synchronousOperationComplete = YES;
}
- (CurrencyConvertorSoapBindingResponse *)ConversionRateUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters 
{
	return [self performSynchronousOperation:[[(CurrencyConvertorSoapBinding_ConversionRate*)[CurrencyConvertorSoapBinding_ConversionRate alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ConversionRateAsyncUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters  delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(CurrencyConvertorSoapBinding_ConversionRate*)[CurrencyConvertorSoapBinding_ConversionRate alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(CurrencyConvertorSoapBindingOperation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
	[request setValue:[NSString stringWithFormat:@"%u", [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[address release];
	[cookies release];
	[super dealloc];
}
@end
@implementation CurrencyConvertorSoapBindingOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(CurrencyConvertorSoapBinding *)aBinding delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error" forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication" code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %u\n", [httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;
	[cookies release];
  if ([urlResponse.MIMEType rangeOfString:@"application/soap+xml"].length == 0) {
		NSError *error = nil;
		[connection cancel];
		if ([httpResponse statusCode] >= 400) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"CurrencyConvertorSoapBindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		} else {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
																[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType]
																													 forKey:NSLocalizedDescriptionKey];
			error = [NSError errorWithDomain:@"CurrencyConvertorSoapBindingResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
  if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation CurrencyConvertorSoapBinding_ConversionRate
@synthesize parameters;
- (id)initWithBinding:(CurrencyConvertorSoapBinding *)aBinding delegate:(id<CurrencyConvertorSoapBindingResponseDelegate>)responseDelegate
parameters:(CurrencyConvertor_ConversionRate *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [CurrencyConvertorSoapBindingResponse new];
	
	CurrencyConvertorSoapBinding_envelope *envelope = [CurrencyConvertorSoapBinding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"ConversionRate"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.webserviceX.NET/ConversionRate" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"CurrencyConvertorSoapBindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ConversionRateResponse")) {
									CurrencyConvertor_ConversionRateResponse *bodyObject = [CurrencyConvertor_ConversionRateResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static CurrencyConvertorSoapBinding_envelope *CurrencyConvertorSoapBindingSharedEnvelopeInstance = nil;
@implementation CurrencyConvertorSoapBinding_envelope
+ (CurrencyConvertorSoapBinding_envelope *)sharedInstance
{
	if(CurrencyConvertorSoapBindingSharedEnvelopeInstance == nil) {
		CurrencyConvertorSoapBindingSharedEnvelopeInstance = [CurrencyConvertorSoapBinding_envelope new];
	}
	
	return CurrencyConvertorSoapBindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2003/05/soap-envelope", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xsd");
	xmlNewNs(root, (const xmlChar*)"http://www.webserviceX.NET/", (const xmlChar*)"CurrencyConvertor");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation CurrencyConvertorSoapBindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
-(void)dealloc {
    self.headers = nil;
    self.bodyParts = nil;
    self.error = nil;	
    [super dealloc];
}
@end
@implementation CurrencyConvertorSoap12Binding
@synthesize address;
@synthesize defaultTimeout;
@synthesize logXMLInOut;
@synthesize cookies;
@synthesize authUsername;
@synthesize authPassword;
- (id)init
{
	if((self = [super init])) {
		address = nil;
		cookies = nil;
		defaultTimeout = 10;//seconds
		logXMLInOut = NO;
		synchronousOperationComplete = NO;
	}
	
	return self;
}
- (id)initWithAddress:(NSString *)anAddress
{
	if((self = [self init])) {
		self.address = [NSURL URLWithString:anAddress];
	}
	
	return self;
}
- (void)addCookie:(NSHTTPCookie *)toAdd
{
	if(toAdd != nil) {
		if(cookies == nil) cookies = [[NSMutableArray alloc] init];
		[cookies addObject:toAdd];
	}
}
- (CurrencyConvertorSoap12BindingResponse *)performSynchronousOperation:(CurrencyConvertorSoap12BindingOperation *)operation
{
	synchronousOperationComplete = NO;
	[operation start];
	
	// Now wait for response
	NSRunLoop *theRL = [NSRunLoop currentRunLoop];
	
	while (!synchronousOperationComplete && [theRL runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]]);
	return operation.response;
}
- (void)performAsynchronousOperation:(CurrencyConvertorSoap12BindingOperation *)operation
{
	[operation start];
}
- (void) operation:(CurrencyConvertorSoap12BindingOperation *)operation completedWithResponse:(CurrencyConvertorSoap12BindingResponse *)response
{
	synchronousOperationComplete = YES;
}
- (CurrencyConvertorSoap12BindingResponse *)ConversionRateUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters 
{
	return [self performSynchronousOperation:[[(CurrencyConvertorSoap12Binding_ConversionRate*)[CurrencyConvertorSoap12Binding_ConversionRate alloc] initWithBinding:self delegate:self
																							parameters:aParameters
																							] autorelease]];
}
- (void)ConversionRateAsyncUsingParameters:(CurrencyConvertor_ConversionRate *)aParameters  delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)responseDelegate
{
	[self performAsynchronousOperation: [[(CurrencyConvertorSoap12Binding_ConversionRate*)[CurrencyConvertorSoap12Binding_ConversionRate alloc] initWithBinding:self delegate:responseDelegate
																							 parameters:aParameters
																							 ] autorelease]];
}
- (void)sendHTTPCallUsingBody:(NSString *)outputBody soapAction:(NSString *)soapAction forOperation:(CurrencyConvertorSoap12BindingOperation *)operation
{
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.address 
																												 cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
																										 timeoutInterval:self.defaultTimeout];
	NSData *bodyData = [outputBody dataUsingEncoding:NSUTF8StringEncoding];
	
	if(cookies != nil) {
		[request setAllHTTPHeaderFields:[NSHTTPCookie requestHeaderFieldsWithCookies:cookies]];
	}
	[request setValue:@"wsdl2objc" forHTTPHeaderField:@"User-Agent"];
	[request setValue:soapAction forHTTPHeaderField:@"SOAPAction"];
	[request setValue:@"application/soap+xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
	[request setValue:[NSString stringWithFormat:@"%u", [bodyData length]] forHTTPHeaderField:@"Content-Length"];
	[request setValue:self.address.host forHTTPHeaderField:@"Host"];
	[request setHTTPMethod: @"POST"];
	// set version 1.1 - how?
	[request setHTTPBody: bodyData];
		
	if(self.logXMLInOut) {
		NSLog(@"OutputHeaders:\n%@", [request allHTTPHeaderFields]);
		NSLog(@"OutputBody:\n%@", outputBody);
	}
	
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:operation];
	
	operation.urlConnection = connection;
	[connection release];
}
- (void) dealloc
{
	[address release];
	[cookies release];
	[super dealloc];
}
@end
@implementation CurrencyConvertorSoap12BindingOperation
@synthesize binding;
@synthesize response;
@synthesize delegate;
@synthesize responseData;
@synthesize urlConnection;
- (id)initWithBinding:(CurrencyConvertorSoap12Binding *)aBinding delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)aDelegate
{
	if ((self = [super init])) {
		self.binding = aBinding;
		response = nil;
		self.delegate = aDelegate;
		self.responseData = nil;
		self.urlConnection = nil;
	}
	
	return self;
}
-(void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
	if ([challenge previousFailureCount] == 0) {
		NSURLCredential *newCredential;
		newCredential=[NSURLCredential credentialWithUser:self.binding.authUsername
												 password:self.binding.authPassword
											  persistence:NSURLCredentialPersistenceForSession];
		[[challenge sender] useCredential:newCredential
			   forAuthenticationChallenge:challenge];
	} else {
		[[challenge sender] cancelAuthenticationChallenge:challenge];
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Authentication Error" forKey:NSLocalizedDescriptionKey];
		NSError *authError = [NSError errorWithDomain:@"Connection Authentication" code:0 userInfo:userInfo];
		[self connection:connection didFailWithError:authError];
	}
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)urlResponse
{
	NSHTTPURLResponse *httpResponse;
	if ([urlResponse isKindOfClass:[NSHTTPURLResponse class]]) {
		httpResponse = (NSHTTPURLResponse *) urlResponse;
	} else {
		httpResponse = nil;
	}
	
	if(binding.logXMLInOut) {
		NSLog(@"ResponseStatus: %u\n", [httpResponse statusCode]);
		NSLog(@"ResponseHeaders:\n%@", [httpResponse allHeaderFields]);
	}
	
	NSMutableArray *cookies = [[NSHTTPCookie cookiesWithResponseHeaderFields:[httpResponse allHeaderFields] forURL:binding.address] mutableCopy];
	
	binding.cookies = cookies;
	[cookies release];
  if ([urlResponse.MIMEType rangeOfString:@"application/soap+xml"].length == 0) {
		NSError *error = nil;
		[connection cancel];
		if ([httpResponse statusCode] >= 400) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:[NSHTTPURLResponse localizedStringForStatusCode:[httpResponse statusCode]] forKey:NSLocalizedDescriptionKey];
				
			error = [NSError errorWithDomain:@"CurrencyConvertorSoap12BindingResponseHTTP" code:[httpResponse statusCode] userInfo:userInfo];
		} else {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:
																[NSString stringWithFormat: @"Unexpected response MIME type to SOAP call:%@", urlResponse.MIMEType]
																													 forKey:NSLocalizedDescriptionKey];
			error = [NSError errorWithDomain:@"CurrencyConvertorSoap12BindingResponseHTTP" code:1 userInfo:userInfo];
		}
				
		[self connection:connection didFailWithError:error];
  }
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
  if (responseData == nil) {
		responseData = [data mutableCopy];
	} else {
		[responseData appendData:data];
	}
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	if (binding.logXMLInOut) {
		NSLog(@"ResponseError:\n%@", error);
	}
	response.error = error;
	[delegate operation:self completedWithResponse:response];
}
- (void)dealloc
{
	[binding release];
	[response release];
	delegate = nil;
	[responseData release];
	[urlConnection release];
	
	[super dealloc];
}
@end
@implementation CurrencyConvertorSoap12Binding_ConversionRate
@synthesize parameters;
- (id)initWithBinding:(CurrencyConvertorSoap12Binding *)aBinding delegate:(id<CurrencyConvertorSoap12BindingResponseDelegate>)responseDelegate
parameters:(CurrencyConvertor_ConversionRate *)aParameters
{
	if((self = [super initWithBinding:aBinding delegate:responseDelegate])) {
		self.parameters = aParameters;
	}
	
	return self;
}
- (void)dealloc
{
	if(parameters != nil) [parameters release];
	
	[super dealloc];
}
- (void)main
{
	[response autorelease];
	response = [CurrencyConvertorSoap12BindingResponse new];
	
	CurrencyConvertorSoap12Binding_envelope *envelope = [CurrencyConvertorSoap12Binding_envelope sharedInstance];
	
	NSMutableDictionary *headerElements = nil;
	headerElements = [NSMutableDictionary dictionary];
	
	NSMutableDictionary *bodyElements = nil;
	bodyElements = [NSMutableDictionary dictionary];
	if(parameters != nil) [bodyElements setObject:parameters forKey:@"ConversionRate"];
	
	NSString *operationXMLString = [envelope serializedFormUsingHeaderElements:headerElements bodyElements:bodyElements];
	
	[binding sendHTTPCallUsingBody:operationXMLString soapAction:@"http://www.webserviceX.NET/ConversionRate" forOperation:self];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if (responseData != nil && delegate != nil)
	{
		xmlDocPtr doc;
		xmlNodePtr cur;
		
		if (binding.logXMLInOut) {
			NSLog(@"ResponseBody:\n%@", [[[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding] autorelease]);
		}
		
		doc = xmlParseMemory([responseData bytes], [responseData length]);
		
		if (doc == NULL) {
			NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"Errors while parsing returned XML" forKey:NSLocalizedDescriptionKey];
			
			response.error = [NSError errorWithDomain:@"CurrencyConvertorSoap12BindingResponseXML" code:1 userInfo:userInfo];
			[delegate operation:self completedWithResponse:response];
		} else {
			cur = xmlDocGetRootElement(doc);
			cur = cur->children;
			
			for( ; cur != NULL ; cur = cur->next) {
				if(cur->type == XML_ELEMENT_NODE) {
					
					if(xmlStrEqual(cur->name, (const xmlChar *) "Body")) {
						NSMutableArray *responseBodyParts = [NSMutableArray array];
						
						xmlNodePtr bodyNode;
						for(bodyNode=cur->children ; bodyNode != NULL ; bodyNode = bodyNode->next) {
							if(cur->type == XML_ELEMENT_NODE) {
								if(xmlStrEqual(bodyNode->name, (const xmlChar *) "ConversionRateResponse")) {
									CurrencyConvertor_ConversionRateResponse *bodyObject = [CurrencyConvertor_ConversionRateResponse deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
								if (xmlStrEqual(bodyNode->ns->prefix, cur->ns->prefix) && 
									xmlStrEqual(bodyNode->name, (const xmlChar *) "Fault")) {
									SOAPFault *bodyObject = [SOAPFault deserializeNode:bodyNode];
									//NSAssert1(bodyObject != nil, @"Errors while parsing body %s", bodyNode->name);
									if (bodyObject != nil) [responseBodyParts addObject:bodyObject];
								}
							}
						}
						
						response.bodyParts = responseBodyParts;
					}
				}
			}
			
			xmlFreeDoc(doc);
		}
		
		xmlCleanupParser();
		[delegate operation:self completedWithResponse:response];
	}
}
@end
static CurrencyConvertorSoap12Binding_envelope *CurrencyConvertorSoap12BindingSharedEnvelopeInstance = nil;
@implementation CurrencyConvertorSoap12Binding_envelope
+ (CurrencyConvertorSoap12Binding_envelope *)sharedInstance
{
	if(CurrencyConvertorSoap12BindingSharedEnvelopeInstance == nil) {
		CurrencyConvertorSoap12BindingSharedEnvelopeInstance = [CurrencyConvertorSoap12Binding_envelope new];
	}
	
	return CurrencyConvertorSoap12BindingSharedEnvelopeInstance;
}
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements
{
    xmlDocPtr doc;
	
	doc = xmlNewDoc((const xmlChar*)XML_DEFAULT_VERSION);
	if (doc == NULL) {
		NSLog(@"Error creating the xml document tree");
		return @"";
	}
	
	xmlNodePtr root = xmlNewDocNode(doc, NULL, (const xmlChar*)"Envelope", NULL);
	xmlDocSetRootElement(doc, root);
	
	xmlNsPtr soapEnvelopeNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2003/05/soap-envelope", (const xmlChar*)"soap");
	xmlSetNs(root, soapEnvelopeNs);
	
	xmlNsPtr xslNs = xmlNewNs(root, (const xmlChar*)"http://www.w3.org/1999/XSL/Transform", (const xmlChar*)"xsl");
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema-instance", (const xmlChar*)"xsi");
	
	xmlNewNsProp(root, xslNs, (const xmlChar*)"version", (const xmlChar*)"1.0");
	
	xmlNewNs(root, (const xmlChar*)"http://www.w3.org/2001/XMLSchema", (const xmlChar*)"xsd");
	xmlNewNs(root, (const xmlChar*)"http://www.webserviceX.NET/", (const xmlChar*)"CurrencyConvertor");
	
	if((headerElements != nil) && ([headerElements count] > 0)) {
		xmlNodePtr headerNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Header", NULL);
		xmlAddChild(root, headerNode);
		
		for(NSString *key in [headerElements allKeys]) {
			id header = [headerElements objectForKey:key];
			xmlAddChild(headerNode, [header xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	if((bodyElements != nil) && ([bodyElements count] > 0)) {
		xmlNodePtr bodyNode = xmlNewDocNode(doc, soapEnvelopeNs, (const xmlChar*)"Body", NULL);
		xmlAddChild(root, bodyNode);
		
		for(NSString *key in [bodyElements allKeys]) {
			id body = [bodyElements objectForKey:key];
			xmlAddChild(bodyNode, [body xmlNodeForDoc:doc elementName:key elementNSPrefix:nil]);
		}
	}
	
	xmlChar *buf;
	int size;
	xmlDocDumpFormatMemory(doc, &buf, &size, 1);
	
	NSString *serializedForm = [NSString stringWithCString:(const char*)buf encoding:NSUTF8StringEncoding];
	xmlFree(buf);
	
	xmlFreeDoc(doc);	
	return serializedForm;
}
@end
@implementation CurrencyConvertorSoap12BindingResponse
@synthesize headers;
@synthesize bodyParts;
@synthesize error;
- (id)init
{
	if((self = [super init])) {
		headers = nil;
		bodyParts = nil;
		error = nil;
	}
	
	return self;
}
-(void)dealloc {
    self.headers = nil;
    self.bodyParts = nil;
    self.error = nil;	
    [super dealloc];
}
@end
