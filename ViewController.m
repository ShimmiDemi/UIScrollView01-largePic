//
//  ViewController.m
//  UIScrollView01-largePic
//
//  Created by Demi  on 15/8/19.
//  Copyright (c) 2015年 Demi . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView *_scrollView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 0, 320, 460);// scrollView visible range
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"big.jpg"];
    CGFloat imgW = imageView.image.size.width;
    CGFloat imgH = imageView.image.size.height;
    imageView.frame = CGRectMake(0, 0, imgW, imgH );
    [scrollView addSubview:imageView];
    
    //set scroll range
    scrollView.contentSize = imageView.image.size;
    
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    
    scrollView.bounces = NO;
    _scrollView = scrollView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
