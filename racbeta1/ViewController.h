//
//  ViewController.h
//  racbeta1
//
//  Created by 峰 on 15/1/5.
//  Copyright (c) 2015年 蔡峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userNametext;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet UIButton *loginBtn;
@property (strong, nonatomic) IBOutlet UIButton *btn;
- (IBAction)loginAction:(id)sender;
- (IBAction)change:(id)sender;

@end

