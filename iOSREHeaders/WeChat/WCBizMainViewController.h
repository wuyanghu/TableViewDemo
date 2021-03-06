//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Jun 16 2019 10:33:12).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

#import "WCBizBaseViewController.h"

#import "ILinkEventExt-Protocol.h"
#import "IWCMallControlLogicExt-Protocol.h"
#import "IWCPayControlLogicExt-Protocol.h"
#import "LocationRetrieveDelegate-Protocol.h"
#import "MMWebViewDelegate-Protocol.h"
#import "UITableViewDelegate-Protocol.h"
#import "WCActionSheetDelegate-Protocol.h"
#import "WCMallFunctionActivityViewDelegate-Protocol.h"
#import "WCPayGetGDPRInfoCgiDelegate-Protocol.h"
#import "WCPayLogicMgrExt-Protocol.h"
#import "WCPayNoticeBannerDelegate-Protocol.h"
#import "WCPayOpenECardControlLogicExt-Protocol.h"
#import "WCPayPwdViewControllerDelegate-Protocol.h"
#import "WCPayUploadIDCardTipsViewControllerDelegate-Protocol.h"
#import "WCPayWalletPayMenuViewControllerDelegate-Protocol.h"

@class GetEUInfoResp, LocationRetriever, NSDictionary, NSMutableArray, NSString, UIButton, UIImageView, UIView, UrlLabel, WCMallControlData, WCPayControlData, WCPayGetGDPRInfoCgi, WCPayJumpRemindControlLogic, WCUIPageControl;

@interface WCBizMainViewController : WCBizBaseViewController <WCPayWalletPayMenuViewControllerDelegate, UITableViewDelegate, WCPayNoticeBannerDelegate, LocationRetrieveDelegate, WCPayUploadIDCardTipsViewControllerDelegate, WCPayOpenECardControlLogicExt, WCPayGetGDPRInfoCgiDelegate, MMWebViewDelegate, WCActionSheetDelegate, WCPayLogicMgrExt, WCPayPwdViewControllerDelegate, IWCPayControlLogicExt, IWCMallControlLogicExt, ILinkEventExt, WCMallFunctionActivityViewDelegate>
{
    unsigned int m_uiNewOrderCount;
    NSMutableArray *m_arrPayCardDetailView;
    WCMallControlData *m_oMallData;
    WCPayControlData *m_oPayData;
    UrlLabel *m_oBroadCastLabel;
    WCUIPageControl *_bigImagePageControl;
    UIView *m_oTipsView;
    UIView *m_oPrePageCurView;
    UIView *m_oNextPageCurView;
    _Bool m_bGetPayCardList;
    unsigned int m_uiCurrentShowedTipsActivityID;
    UIView *_topHeaderView;
    UIImageView *_redDotViewForTranslate;
    UIButton *_balanceBtn;
    UIButton *_cardListBtn;
    NSMutableArray *_activityGroups;
    NSDictionary *m_dicBanners;
    LocationRetriever *locationRetriever;
    _Bool m_hasShowUploadIdImageAlert;
    _Bool m_isTencentServiceFold;
    double m_dynamicCellHeight;
    UIView *_footerFolderView;
    unsigned int m_payCardListLogicTag;
    unsigned int m_functionActivityListLogicTag;
    WCPayGetGDPRInfoCgi *m_getGDPRCgi;
    GetEUInfoResp *m_getGDPRResponse;
    _Bool _m_hasNewOrRedDotWhenOpen;
    UIImageView *_reddotForBalance;
    UIImageView *_reddotForLqb;
    WCPayJumpRemindControlLogic *_jumpRemindControlLogic;
}

- (void).cxx_destruct;
- (void)OnEntranceStatusChanged;
- (void)OnFinishedWCPayLogic:(id)arg1 CompleteStatus:(int)arg2;
- (void)OnGetFunctionList:(id)arg1 FromLocalCache:(_Bool)arg2;
- (void)OnGetLocalCachePayCardList:(id)arg1;
- (void)OnOrderHistory;
- (void)OnOrderHistoryH5;
- (void)OnPayCardListChanged:(id)arg1;
- (void)OnStatusChangedOrderListCountChanged:(unsigned int)arg1;
- (void)OnStepInOfflinePay;
- (void)OnTransferMoney:(id)arg1;
- (void)OnWCMallFunctionActivityViewButtonDown:(id)arg1;
- (void)OnWCPayGetGDPRInfoCgiError:(id)arg1 errorCode:(unsigned int)arg2;
- (void)OnWCPayGetGDPRInfoCgiResponseOK:(id)arg1;
- (void)OnWCPayPwdViewControllerBack;
- (void)actionSheet:(id)arg1 clickedButtonAtIndex:(long long)arg2;
- (void)banner:(id)arg1 clickWithUrl:(id)arg2;
- (double)calculateRedDotOffsetWithActivityList:(id)arg1 initOffset:(double)arg2;
- (void)caluateDynamicCellHeight:(_Bool)arg1;
- (double)contentHeightWithActivityCount:(unsigned long long)arg1;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (id)gdprUserKeyInfoBottomView;
- (id)getActivityCellView:(id)arg1 showActivityCount:(unsigned long long)arg2;
- (id)getBannerView;
- (id)getFolderFooterView:(_Bool)arg1 isNeedShowRedDot:(_Bool)arg2;
- (float)headerViewHeight;
- (float)headerViewPaddingTop;
- (id)init;
- (void)initView;
- (_Bool)isNeedFold:(unsigned int)arg1;
@property(retain, nonatomic) WCPayJumpRemindControlLogic *jumpRemindControlLogic; // @synthesize jumpRemindControlLogic=_jumpRemindControlLogic;
@property(nonatomic) _Bool m_hasNewOrRedDotWhenOpen; // @synthesize m_hasNewOrRedDotWhenOpen=_m_hasNewOrRedDotWhenOpen;
@property(nonatomic) unsigned int m_uiNewOrderCount; // @synthesize m_uiNewOrderCount;
- (void)makeCardHeaderView:(id)arg1;
- (id)makeNewOrderRecord:(id)arg1;
- (id)navigationBarBackgroundColor;
- (_Bool)needToShowRedDotForTransfer;
- (void)onAddPayCard;
- (void)onAddPayCardInUnregView;
- (void)onBalanceBtnCancel;
- (void)onBalanceBtnDown;
- (void)onBalanceClick;
- (void)onCardListBtnCancel;
- (void)onCardListBtnDown;
- (void)onCardListClick;
- (void)onClickAddCardButton:(id)arg1;
- (void)onClickCard:(id)arg1;
- (void)onClickCardListButton:(id)arg1;
- (void)onClickFolder;
- (void)onContinuePayCardListChanged:(id)arg1;
- (void)onLinkClicked:(id)arg1 backupUrl:(id)arg2 withRect:(struct CGRect)arg3;
- (void)onLinkClicked:(id)arg1 withRect:(struct CGRect)arg2;
- (void)onLqbBtnClick;
- (void)onOfflinePayClick;
- (void)onOpenTouchIDAuth;
- (void)onOperate:(id)arg1;
- (void)onPageControllerChangePage:(id)arg1;
- (void)onRetrieveLocationError:(int)arg1;
- (void)onRetrieveLocationOK:(id)arg1;
- (void)onRetrieveLocationTimeOut:(id)arg1;
- (void)onWCPayWalletPayMenuViewControllerBack;
- (void)onWCPayWalletPayMenuViewControllerSwitchWallet;
- (void)openECardLogicDidSuccess:(id)arg1;
- (void)openPWDViewController;
@property(retain, nonatomic) UIImageView *reddotForBalance; // @synthesize reddotForBalance=_reddotForBalance;
@property(retain, nonatomic) UIImageView *reddotForLqb; // @synthesize reddotForLqb=_reddotForLqb;
- (void)refreshView;
- (void)refreshViewWithContentOffSet:(struct CGPoint)arg1;
- (void)refreshViewWithMallControlData:(id)arg1;
- (void)refreshViewWithPayControlData:(id)arg1;
- (void)reloadNavigationItem;
- (void)removeRedDotForTransferNowAndForever;
- (void)scrollToOffset:(id)arg1;
- (double)sectionHeaderViewHeight;
- (void)showAddCardView;
- (void)showTouchIDConfirmIfNeed;
- (struct CGSize)tableViewContentSize;
- (struct CGRect)tableViewFrame;
- (unsigned int)tencentServiceFoldedCount;
- (id)testMakeLabel:(id)arg1;
- (double)testRowHeight;
- (void)unHighlineActivityView;
- (void)viewDidBePushed:(_Bool)arg1;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillBePoped:(_Bool)arg1;
- (void)viewWillDisappear:(_Bool)arg1;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

