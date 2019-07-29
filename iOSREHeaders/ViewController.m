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
#import "OCShowAlertView.h"

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

    model.model2 = [TestModel2 new];
    model.model2.download = @"baidu.com";
    model.model2.teststring = @"teststring";

//    [model setValue:@(2) forKey:@"sex2"];
    NSDictionary * dict = [NSDictionary dictionary];
//    [dict setValue:@"2" forKey:@"1"];
    NSMutableDictionary * newDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    [newDict setObject:@"10" forKey:@"try_time"];
    
    [LogWriteToFile writeToFileWithFileName:@"model" obj:model];
    
    [OCShowAlertView printArg1:self prefix:@"vc"];
    
    NSString * formatTime = [self formattingTime:983547511750];
    NSLog(@"%@",formatTime);
    
    
    UIImageView * imageView = [[UIImageView alloc] initWithImage:<#(nullable UIImage *)#>];
    imageView.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);
    
    UIImageView * imageView2 = [[UIImageView alloc] initWithFrame:<#(CGRect)#>];
    imageView2.image = [UIImage imageNamed:<#(nonnull NSString *)#>]
    
}

- (NSString *)formattingTime:(NSInteger)time{
    NSInteger newTime = time/1000000000;
    NSInteger minute = newTime/60;
    NSInteger second = newTime%60;
    
    NSString * minuteString = [self stringWithFormatTime:minute];
    NSString * secondString = [self stringWithFormatTime:second];
    
    return [NSString stringWithFormat:@"%@%@%@%@",minuteString,NSLocalizedString(@"minute", nil),secondString,NSLocalizedString(@"second", nil)];
}

- (NSString *)stringWithFormatTime:(NSInteger)time{
    NSString * timeString;
    if (time<10) {
        timeString = [NSString stringWithFormat:@"0%ld",time];
    }else{
        timeString = [NSString stringWithFormat:@"%ld",time];
    }
    return timeString;
}

+ (NSString*)dictionaryToJson:(NSDictionary *)dic{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
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
