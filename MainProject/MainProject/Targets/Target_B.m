//
//  Target_B.m
//  MainProject
//
//  Created by 刘花椒 on 2017/1/12.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end
