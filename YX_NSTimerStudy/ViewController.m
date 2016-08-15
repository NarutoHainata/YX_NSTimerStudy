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
    NSInteger index;
    NSArray *arr;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //每隔s秒执行一次nslSome方法,如果repeats为NO则只执行一次
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(nslSome) userInfo:nil repeats:YES];
    index = 0;
    arr = @[@"麻",@"烦",@"给",@"个",@"星",@"星",@"!"];
}
-(void)nslSome{
    
    
    //让该方法在执行6次后停止
    index++;
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 50)];
    lab.text = [arr objectAtIndex:index-1];
    lab.center = CGPointMake(self.view.center.x-400, 20+80*index);
    lab.transform = CGAffineTransformMakeRotation(M_PI);
    lab.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.alpha = 0.1;
    [self.view addSubview:lab];
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        lab.center = CGPointMake(self.view.center.x, 20+80*index);
    } completion:^(BOOL finished) {
        lab.alpha = 1;
        
    }];
    
    [UIView animateWithDuration:2 delay:2 options:UIViewAnimationOptionCurveEaseOut animations:^{
        lab.transform = CGAffineTransformMakeRotation(0);
    } completion:^(BOOL finished) {
        
    }];
    
    [UIView animateWithDuration:8 delay:8 options:UIViewAnimationOptionCurveEaseOut animations:^{
        lab.center = CGPointMake(self.view.center.x+400, 20+50*index);
    } completion:^(BOOL finished) {
        lab.alpha = 0.0;
    }];
    
    [UIView animateWithDuration:12 delay:12 options:UIViewAnimationOptionCurveEaseOut animations:^{
        //lab.text = [arrTest objectAtIndex:index-1];
        lab.center = CGPointMake(self.view.center.x, 20+80*index);
    } completion:^(BOOL finished) {
        lab.alpha = 1;
        
    }];

    if (index == 6) {
        [timer invalidate];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
