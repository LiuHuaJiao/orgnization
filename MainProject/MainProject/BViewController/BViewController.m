//
//  BViewController.m
//  MainProject
//
//  Created by 刘花椒 on 2017/1/11.
//  Copyright © 2017年 花椒. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation BViewController

- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.contentLabel];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    self.contentLabel.frame = CGRectMake(10, 100, 200, 100);
}

- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
