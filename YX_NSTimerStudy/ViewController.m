//
//  ViewController.m
//  YX_NSTimerStudy
//
//  Created by yang on 16/8/12.
//  Copyright © 2016年 poplary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //每隔s秒执行一次nslSome方法
    timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(nslSome) userInfo:nil repeats:NO];
}
-(void)nslSome{
    
    NSLog(@"nslSome");
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
