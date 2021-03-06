//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Sep 17 2017 16:24:48).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

#import <Foundation/NSObject.h>

@class UIGestureRecognizer, UIView, UIViewController, YTEngineAdPlayerAdaptor;
@protocol YTEngineModuleController><YTEngineAdController;

@interface YTEnginePlatformManager : NSObject
{
    YTEngineAdPlayerAdaptor *mPlayerInstance;
    _Bool mLocalPlay;
    _Bool mLocalChangeToOnline;
    _Bool mAutoSkipHead;
    _Bool mSkipAdButton;
    _Bool mAppleADVideo;
    UIView *mBarrageView;
    _Bool mIsDeinit;
    _Bool _masterLogEnable;
    id <YTEngineModuleController><YTEngineAdController> moduleController;
}

@property(nonatomic, getter=isMasterLogEnable) _Bool masterLogEnable; // @synthesize masterLogEnable=_masterLogEnable;
@property(nonatomic) _Bool enableSkipAdButton; // @synthesize enableSkipAdButton=mSkipAdButton;
@property _Bool isDeinit; // @synthesize isDeinit=mIsDeinit;
@property(nonatomic) __weak id <YTEngineModuleController><YTEngineAdController> moduleController; // @synthesize moduleController;
- (void).cxx_destruct;
- (id)getVideoInformation;
- (id)captureVideoFrameWithBarrageView:(id)arg1 captureBarrageView:(_Bool)arg2;
- (id)captureVideoFrame:(id)arg1;
@property(nonatomic) _Bool lockScreen;
@property(nonatomic) _Bool vrMode;
- (float)getPerspectiveAngle;
- (void)changeMainPerspective:(_Bool)arg1;
- (void)setScreenType:(long long)arg1;
@property(nonatomic) UIGestureRecognizer *gestureForSpheer3DVideo;
@property(nonatomic) _Bool appleADVideo; // @synthesize appleADVideo=mAppleADVideo;
@property(nonatomic) _Bool enableGyroscope;
@property(nonatomic) _Bool spheerNormalized;
@property(nonatomic) double volume;
- (_Bool)isLocalPlay;
- (_Bool)isPausingInitiative;
- (_Bool)isPause;
- (_Bool)isPlaying;
- (_Bool)isSeeking;
- (_Bool)isLoading;
- (void)deinit;
- (void)replay;
- (void)stop;
- (void)dpause;
- (void)pause2;
- (void)switchSubtitle:(_Bool)arg1;
- (void)pause;
- (void)play;
- (void)prepare;
@property(nonatomic) UIViewController *controller; // @dynamic controller;
@property(nonatomic, getter=isAutoSkipHead) _Bool autoSkipHead;
- (void)dealloc;
- (id)init;

@end

