//
//  ViewController.m
//  CYPWDDemo
//
//  Created by jxrs on 2021/8/12.
//

#import "ViewController.h"
#import "CTPasswordView.h"
#import "CTPasswordViewTypeDefine.h"
@interface ViewController ()<CTPasswordViewDelegate>
@property(nonatomic,strong)CTPasswordView * pwView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addPWV];
}

-(void)addPWV{
    self.pwView = [[CTPasswordView alloc] initWithFrame:CGRectMake(15, 100, CTScreenH - 30 , 100)];
    self.pwView.delegate = self;
    [self.view addSubview:self.pwView];
}

- (void)passwordView:(nonnull CTPasswordView *)passwordView didFinishInput:(nonnull NSString *)password {
    NSLog(@"didFinishInput---password=====%@",password);
}

- (void)passwordView:(nonnull CTPasswordView *)passwordView passwordTextDidChange:(nonnull NSString *)password {
    NSLog(@"passwordTextDidChange--password=====%@",password);
}

@end
