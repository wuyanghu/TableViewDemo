//
//  TestModel.h
//  iOSREHeaders
//
//  Created by ruantong on 2019/7/4.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestModel2.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestModel : NSObject
@property (nonatomic,copy) NSString * name;
@property (nonatomic,assign) NSInteger sex;
@property (nonatomic,strong) TestModel2 * model2;
@property (nonatomic,strong) TestModel2 * model3;
@end

NS_ASSUME_NONNULL_END
