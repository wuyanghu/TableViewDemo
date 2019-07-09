//
//  NSObject+ModelToDictionary.m
//  iOSREHeaders
//
//  Created by ruantong on 2019/7/5.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "LogWriteToFile.h"
#import <objc/runtime.h>

@implementation LogWriteToFile

+ (void)writeToFileWithClass:(id)selfClass{

    //声明一个字典
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    // 得到当前class的所有属性
    uint count;
    objc_property_t *properties = class_copyPropertyList([selfClass class], &count);
    
    // 循环并用KVC得到每个属性的值
    for(int i = 0; i<count; i++) {
        objc_property_t property = properties[i];
        NSString *name = @(property_getName(property));
        id value = [selfClass valueForKey:name]?:@"nil";//默认值为nil字符串
        [dictionary setObject:value forKey:name];//装载到字典里
    }
    
    //释放
    free(properties);

    NSString * allClassMessage = [NSString stringWithFormat:@"%@",dictionary];
    NSString * writePath = [NSString stringWithFormat:@"/var/mobile/%@.txt",NSStringFromClass([selfClass class])];
     [allClassMessage writeToFile:writePath atomically:NO encoding:4 error:NULL];
    // NSString * message = [NSString stringWithFormat:@"allClassMessage=%@,isResult=%@",allClassMessage,isResult?@"YES":@"NO"];
    // UIAlertView * alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    // [alert show];
}

@end
