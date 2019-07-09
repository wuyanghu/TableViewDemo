//
//  SnowEffectView.m
//  iOSREHeaders
//
//  Created by ruantong on 2019/7/9.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "SnowEffectView.h"

@implementation SnowEffectView

- (void)show{
    self.backgroundColor  = [UIColor blackColor];
    // 创建粒子Layer
    CAEmitterLayer *snowEmitter = [CAEmitterLayer layer];
    // 粒子发射位置
    snowEmitter.emitterPosition = CGPointMake(self.frame.size.width/2,20);
    // 发射源的尺寸大小
    snowEmitter.emitterSize = self.bounds.size;
    // 发射模式
    snowEmitter.emitterMode = kCAEmitterLayerSurface;
    // 发射源的形状
    snowEmitter.emitterShape = kCAEmitterLayerLine;
    // 创建雪花类型的粒子
    CAEmitterCell *snowflake = [CAEmitterCell emitterCell];
    // 粒子的名字
    snowflake.name = @"snow";
    // 粒子参数的速度乘数因子
    snowflake.birthRate = 100.0;  //每秒生成数量
    snowflake.lifetime = 60;        //生存时间
    // 粒子速度
    snowflake.velocity =10.0;
    // 粒子的速度范围
    snowflake.velocityRange = 10;
    // 粒子y方向的加速度分量
    snowflake.yAcceleration = 8;
    // 周围发射角度
    snowflake.emissionRange = 0.5 * M_PI;
    // 子旋转角度范围
    snowflake.spinRange = 0.25 * M_PI;
    snowflake.contents = (id)[[UIImage imageNamed:@"snow"] CGImage];
    // 设置雪花形状的粒子的颜色
    snowflake.color = [[UIColor whiteColor] CGColor];
    //缩放范围
    snowflake.scaleRange = 0.3f;
    snowflake.scale = 0.1f;
    
    snowEmitter.shadowOpacity = 1.0;
    snowEmitter.shadowRadius = 0.0;
    snowEmitter.shadowOffset = CGSizeMake(0.0, 0.0);
    // 粒子边缘的颜色
    snowEmitter.shadowColor = [[UIColor whiteColor] CGColor];
    // 添加粒子
    snowEmitter.emitterCells = @[snowflake];
    
    // 将粒子Layer添加进图层中
    [self.layer addSublayer:snowEmitter];
}

- (void)show2{
    self.backgroundColor =[UIColor whiteColor];
    //发射器
    CAEmitterLayer *rainEmitter =[CAEmitterLayer layer];
    
    rainEmitter.emitterShape    = kCAEmitterLayerLine;
    rainEmitter.emitterMode     = kCAEmitterLayerOutline;
    rainEmitter.emitterSize     = self.bounds.size;
    rainEmitter.renderMode      = kCAEmitterLayerAdditive;
    rainEmitter.emitterPosition = CGPointMake(self.frame.size.width/2, 20);
    //水滴
    CAEmitterCell *rainflake    = [CAEmitterCell emitterCell];
    rainflake.birthRate         = 50;   //每秒发出的数量
    
    //rainflake.speed             = 10;   //速度
    rainflake.velocity          = 300;   //加速度
    //rainflake.velocityRange     = 75;   //加速度范围
    rainflake.yAcceleration     = 500;  //重力
    
    rainflake.contents          = (id)[UIImage imageNamed:@"rain"].CGImage;
    rainflake.color             = [UIColor whiteColor].CGColor;
    rainflake.lifetime          = 2;   //生命周期
    rainflake.scale             = 0.3;  //缩放
    rainflake.scaleRange        = 0.2;
    
    //水花
    CAEmitterCell *rainSpark =[CAEmitterCell emitterCell];
    
    rainSpark.birthRate         = 1;
    rainSpark.velocity          = 0;
    //rainSpark.emissionRange     = M_PI;//180度
    //rainSpark.yAcceleration     = 40;
    rainSpark.scale             = 0.5;
    rainSpark.contents          = (id)[UIImage imageNamed:@"snow"].CGImage;
    rainSpark.color=[UIColor whiteColor].CGColor;
    rainSpark.lifetime          =  0.3;
    
    //
    
    // and finally, the sparks
    CAEmitterCell* spark = [CAEmitterCell emitterCell];
    
    spark.birthRate            = 50;       //炸开后产生40花
    spark.velocity             = 50;       //速度
    spark.velocityRange        = 20;
    spark.emissionRange        = M_PI;   // 360 度
    spark.yAcceleration        = 40;         // 重力
    spark.lifetime             = 0.5;
    
    spark.contents          = (id) [[UIImage imageNamed:@"snow"] CGImage];
    spark.scaleSpeed        = 0.2;
    spark.scale             = 0.2;
    spark.color =[UIColor whiteColor].CGColor;
    spark.alphaSpeed        =- 0.25;
    spark.spin              = 2* M_PI;
    spark.spinRange         = 2* M_PI;
    
    rainEmitter.emitterCells    = @[rainflake];
    rainflake.emitterCells      = @[rainSpark];
    rainSpark.emitterCells      = @[spark];
    
    [self.layer addSublayer:rainEmitter];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
