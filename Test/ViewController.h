//
//  ViewController.h
//  Test
//
//  Created by abc on 13-5-6.
//  Copyright (c) 2013年 abc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arr;
}

@property (nonatomic,retain) NSArray *arr;

@end
