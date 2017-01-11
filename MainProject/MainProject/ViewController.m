//
//  ViewController.m
//  MainProject
//
//  Created by 刘花椒 on 2017/1/11.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *pushAViewControllerButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.pushAViewControllerButton];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.pushAViewControllerButton sizeToFit];
    self.pushAViewControllerButton.frame = CGRectMake(10, 100, 200, 100);
}

#pragma mark - event response
- (void)didTappedPushAViewControllerButton:(UIButton *)button
{
    AViewController *viewController = [[AViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:^{
        
    }];
}

#pragma mark - getters and setters
- (UIButton *)pushAViewControllerButton
{
    if (_pushAViewControllerButton == nil) {
        _pushAViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAViewControllerButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAViewControllerButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAViewControllerButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
