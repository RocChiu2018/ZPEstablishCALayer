//
//  ViewController.m
//  新建图层
//
//  Created by apple on 2016/11/16.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 * 其实，对比CALayer，UIView多了一个事件处理的功能。也就是说，CALayer不能处理用户的触摸事件，而UIView可以。所以，如果显示出来的东西需要跟用户进行交互的话，用UIView；如果不需要跟用户进行交互，用UIView或者CALayer都可以，当然，CALayer的性能会高一些，因为它少了事件处理的功能，更加轻量级。
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     从下面的代码可以看出，创建新的CALayer对象跟使用UIImageView控件一样，都可以显示图片，但是UIImageView控件是继承于UIResponder类的，而CALayer类是继承于NSObject类的，所以UIImageView控件比CALayer对象多了一个事件处理功能，也就是说CALayer对象不能处理用户的触摸事件，而UIImageView控件则可以。当然，CALayer对象的性能会高一些，因为它少了事件处理的功能，更加轻量级。
     */
//    CALayer *layer = [[CALayer alloc] init];
    CALayer *layer = [CALayer layer];  //与上一句代码作用相同
    layer.backgroundColor = [UIColor redColor].CGColor;
    layer.frame = CGRectMake(200, 200, 100, 100);
    layer.contents = (id)[UIImage imageNamed:@"阿狸头像"].CGImage;
    layer.cornerRadius = 10;
    layer.masksToBounds = YES;
    [self.view.layer addSublayer:layer];    
}

@end
