//
//  ViewController.m
//  iOSREHeaders
//
//  Created by ruantong on 2019/7/2.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "NSObject+Properties.h"
#import <objc/runtime.h>
#import "BalloonFlyView.h"
#import "LogWriteToFile.h"
#import "SnowEffectView.h"

#define CHFile(path) [NSString stringWithFormat:@"/Library/PreferenceLoader/Preferences/%@",path]

@interface ViewController ()
{
    CGFloat animatedTime;
}
@property (nonatomic,strong) NSTimer * timer;
@property (nonatomic,assign) NSInteger count;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TestModel * model = [TestModel new];
    model.name = @"张三";
    model.sex = 1;
    [LogWriteToFile writeToFileWithClass:self];
    model.model2 = [TestModel2 new];
    model.model2.download = @"baidu.com";
    model.model2.teststring = @"teststring";

    [model setValue:@(2) forKey:@"sex2"];
    
//    SnowEffectView * snowView = [[SnowEffectView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:snowView];
//    [snowView show2];
}

- (void)action{
    BalloonFlyView *vi = [[BalloonFlyView alloc] initWithFrame:CGRectZero];
    [vi showAnimationInView:self.view];
}

- (void)viewWillAppear:(BOOL)animated{
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(showBallonFly) userInfo:nil repeats:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
//    [self.timer invalidate];
//    self.timer = nil;
}

- (void)showBallonFly{
    NSLog(@"showBallonFly");
    BalloonFlyView *vi = [[BalloonFlyView alloc] initWithFrame:CGRectZero];
    [vi showAnimationInView:self.view];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animatedTime/3*1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        BalloonFlyView *vi2 = [[BalloonFlyView alloc] initWithFrame:CGRectZero];
        [vi2 showAnimationInView:self.view];
    });
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animatedTime/3*2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        BalloonFlyView *vi3 = [[BalloonFlyView alloc] initWithFrame:CGRectZero];
        [vi3 showAnimationInView:self.view];
    });
}
@end
