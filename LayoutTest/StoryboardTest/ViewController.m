//
//  ViewController.m
//  LayoutTest
//
//  Created by 21iMac_079 on 2019/3/7.
//

#import "ViewController.h"

#import "AppDelegate.h"

#import "TestCustom.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *tab1Button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"tab1Button, %@", self.tab1Button);
    
    TestCustom *testCustom = [[TestCustom alloc] init];
    testCustom.contentView.frame = CGRectMake(0, 30, 50, 50);
    [self.view addSubview:testCustom.contentView];
}

- (IBAction)openStoryboard1Action:(id)sender {
    //默认的ViewController模式
    //storyboard中配置initialViewController="ZoF-dv-9tJ"
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardTest" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = storyboard.instantiateInitialViewController;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)openStoryboard2Action:(id)sender {
    //拿到指定的ViewController
    //storyboard中配置storyboardIdentifier="two"
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"StoryboardTest" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"two"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
