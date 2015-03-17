//
//  ViewController.m
//  racbeta1
//
//  Created by 峰 on 15/1/5.
//  Copyright (c) 2015年 蔡峰. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>


@interface ViewController (){

    
}
@property (nonatomic,strong)NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self uiMaker];
    self.name=@"1";
    RAC(self.loginBtn, enabled) = [RACSignal combineLatest:@[self.userNametext.rac_textSignal, self.passwordText.rac_textSignal] reduce:^id(NSString *userName, NSString *password) {
        return @(userName.length >= 6 && password.length >= 6);
    }];
    
    [RACObserve(self,name )
     subscribeNext:^(NSString* x){
        // request(x);//发送一个请求
         [self settext:x];
         NSLog(@"allen   %@",x);
     }];
    
    [[self.userNametext.rac_textSignal
      filter:^(NSString *str) {
          if (str.length > 20) {
              return YES;
          } else {
              return NO;
          }
      }]
     subscribeNext:^(NSString *str) {
         
        // <span style="white-space:pre">    </span>request(x);//发送一个请求
     
     }];
    // Do any additional setup after loading the view, typically from a nib.
    
   // RAC(self.outputLabel, text) = self.inputTextField.rac_textSignal;

    
}
-(void)uiMaker{

    self.loginBtn.layer.cornerRadius=4.0f;
    self.btn.layer.cornerRadius=4.0f;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)settext:(NSString *)a{

    self.passwordText.text=a;
}
- (IBAction)loginAction:(id)sender {
}

- (IBAction)change:(id)sender {
    
    self.name=self.userNametext.text;
    
    
}
@end
