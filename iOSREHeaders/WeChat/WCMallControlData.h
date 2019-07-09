//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Jun 16 2019 10:33:12).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

#import <objc/NSObject.h>

@class NSArray, NSDictionary, NSMutableDictionary, NSString, WCMallBroadCastInfo, WCMallFunctionActivity, WCMallPayProductInfo, WCMallPayProductLatestInfo;

@interface WCMallControlData : NSObject
{
    WCMallBroadCastInfo *m_structBroadCastInfo;
    WCMallFunctionActivity *selectedFunctionActivity;
    WCMallPayProductLatestInfo *selectedPayProductLatestInfo;
    WCMallPayProductInfo *selectedPayProductInfo;
    NSMutableDictionary *selectedProductsFilledInfoDic;
    NSArray *m_arrGlobalActivityList;
    NSArray *m_arrFunctionActivityList;
    NSArray *m_arrFunctionProductsList;
    NSArray *m_arrOldTelephoneList;
    NSDictionary *m_dicAllTelephoneList;
    NSDictionary *m_dicCandidateTelephoneList;
    _Bool m_bNotShowTutorial;
    _Bool m_bFunctionListDataFromLocalCache;
    NSString *m_balanceLink;
    NSString *m_rechargeLink;
    NSString *m_balanceWord;
    NSString *m_rechargeWord;
    NSDictionary *m_structEmptyPhoneChargeList;
    NSDictionary *m_structHasPhoneChargeList;
    NSDictionary *m_functionTypeMap;
    NSArray *_bannerDics;
}

- (void).cxx_destruct;
@property(retain, nonatomic) NSArray *bannerDics; // @synthesize bannerDics=_bannerDics;
@property(retain, nonatomic) NSArray *m_arrFunctionActivityList; // @synthesize m_arrFunctionActivityList;
@property(retain, nonatomic) NSArray *m_arrFunctionProductsList; // @synthesize m_arrFunctionProductsList;
@property(retain, nonatomic) NSArray *m_arrGlobalActivityList; // @synthesize m_arrGlobalActivityList;
@property(retain, nonatomic) NSArray *m_arrOldTelephoneList; // @synthesize m_arrOldTelephoneList;
@property(nonatomic) _Bool m_bFunctionListDataFromLocalCache; // @synthesize m_bFunctionListDataFromLocalCache;
@property(nonatomic) _Bool m_bNotShowTutorial; // @synthesize m_bNotShowTutorial;
@property(retain, nonatomic) NSString *m_balanceLink; // @synthesize m_balanceLink;
@property(retain, nonatomic) NSString *m_balanceWord; // @synthesize m_balanceWord;
@property(retain, nonatomic) NSDictionary *m_dicAllTelephoneList; // @synthesize m_dicAllTelephoneList;
@property(retain, nonatomic) NSDictionary *m_dicCandidateTelephoneList; // @synthesize m_dicCandidateTelephoneList;
@property(retain, nonatomic) NSDictionary *m_functionTypeMap; // @synthesize m_functionTypeMap;
@property(retain, nonatomic) NSString *m_rechargeLink; // @synthesize m_rechargeLink;
@property(retain, nonatomic) NSString *m_rechargeWord; // @synthesize m_rechargeWord;
@property(retain, nonatomic) WCMallBroadCastInfo *m_structBroadCastInfo; // @synthesize m_structBroadCastInfo;
@property(retain, nonatomic) NSDictionary *m_structEmptyPhoneChargeList; // @synthesize m_structEmptyPhoneChargeList;
@property(retain, nonatomic) NSDictionary *m_structHasPhoneChargeList; // @synthesize m_structHasPhoneChargeList;
@property(retain, nonatomic) WCMallFunctionActivity *selectedFunctionActivity; // @synthesize selectedFunctionActivity;
@property(retain, nonatomic) WCMallPayProductInfo *selectedPayProductInfo; // @synthesize selectedPayProductInfo;
@property(retain, nonatomic) WCMallPayProductLatestInfo *selectedPayProductLatestInfo; // @synthesize selectedPayProductLatestInfo;
@property(retain, nonatomic) NSMutableDictionary *selectedProductsFilledInfoDic; // @synthesize selectedProductsFilledInfoDic;

@end
