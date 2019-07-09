//
//  CustomTestView.m
//  iOSREHeaders
//
//  Created by ruantong on 2019/7/7.
//  Copyright © 2019 wupeng. All rights reserved.
//

#import "ShowAlertView.h"

@implementation ShowAlertView

+ (void)showAlertViewWithMessage:(NSString *)message{
    dispatch_async(dispatch_get_main_queue(), ^{
		UIAlertView * alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
	    [alert show];
	});
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
