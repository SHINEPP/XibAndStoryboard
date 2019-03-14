//
//  TestViewController.m
//  LayoutTest
//
//  Created by 21iMac_079 on 2019/3/13.
//

#import "TestViewController.h"

@interface TestViewController () {
    UIView *testView;
}

@end

@implementation TestViewController

- (instancetype)init {
    testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    testView.backgroundColor = [UIColor blackColor];
    self.view  = testView;
    
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"TestViewController, view = %@", self.view);
}

@end
