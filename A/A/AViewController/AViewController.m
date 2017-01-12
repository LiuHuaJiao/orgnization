//
//  AViewController.m
//  MainProject
//
//  Created by 刘花椒 on 2017/1/11.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AViewController ()

@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.pushBViewControllerButton];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    [self.pushBViewControllerButton sizeToFit];
    self.pushBViewControllerButton.frame = CGRectMake(10, 100, 200, 100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didTappedPushBViewControllerButton:(UIButton *)button {
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
    [self presentViewController:viewController animated:YES completion:^{
        
    }];
}

- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
