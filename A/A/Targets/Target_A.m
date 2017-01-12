//
//  Target_A.m
//  A
//
//  Created by 刘花椒 on 2017/1/12.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"


@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
