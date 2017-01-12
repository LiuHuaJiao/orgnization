//
//  CTMediator+A.m
//  A_Category
//
//  Created by 刘花椒 on 2017/1/11.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *)A_aViewController {
    /*
     AViewController *viewController = [[AViewController alloc] init];
     */
    return [self performTarget:@"A" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
