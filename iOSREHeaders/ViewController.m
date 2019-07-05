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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TestModel * model = [TestModel new];
    model.name = @"张三";
    model.sex = 1;

    NSError *error;
    NSString *textFileContents = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"allClassMessage" ofType:@"txt"] encoding:NSUTF8StringEncoding error:&error];
    NSDictionary * dict = [self dictionaryWithJsonString:textFileContents];
    NSLog(@"11");
//    NSDictionary * dict = [model propertiesValues];
//    NSLog(@"dict:%@",model);
//    NSString * allClassMessage = @"allClassMessage";
//    [allClassMessage writeToFile:@"/var/mobile/allClassMessage.txt" atomically:NO encoding:4 error:NULL];
    
    
}

//json格式字符串转字典：

- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    
    return dic;
    
}

@end
