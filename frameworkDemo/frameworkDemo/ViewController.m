//
//  ViewController.m
//  frameworkDemo
//
//  Created by Moss1on on 2017/8/24.
//  Copyright © 2017年 Mossion. All rights reserved.
//

#import "ViewController.h"
#import <bundle/ImageTools.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // WechatIMG19 为framework内的bundle里的图片
    UIImage *image = [ImageTools loadImageWithImageName:@"WechatIMG19"];
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.frame = CGRectMake(100, 100, 100, 100);
    imgView.image = image;
    imgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:imgView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
