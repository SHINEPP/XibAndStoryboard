//
//  ViewController.m
//  LayoutTest
//
//  Created by 21iMac_079 on 2019/3/7.
//

#import "ViewController.h"

#import "AppDelegate.h"

#import "TestCustom.h"
#import "TestViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *tab1Button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"view = %@, tab1Button, %@", self.view, self.tab1Button);
    
    TestCustom *testCustom = [[TestCustom alloc] init];
    testCustom.contentView.frame = CGRectMake(0, 50, 50, 30);
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

- (IBAction)pushTestViewControllerAction:(id)sender {
    TestViewController *viewController = [[TestViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
