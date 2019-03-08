//
//  TestCustom.m
//  AppRelaxIOS
//
//  Created by 21iMac_079 on 2019/3/7.
//

#import <UIKit/UIKit.h>

#import "TestCustom.h"

#import "Test1View.h"
#import "Test2View.h"

@interface TestCustom()

@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UIView *container1View;
@property (weak, nonatomic) IBOutlet UIView *container2View;

@end

@implementation TestCustom

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [[NSBundle mainBundle] loadNibNamed:@"TestCustom" owner:self options:nil];
    NSLog(@"TestCustom, setup, view = %@, titleLabel = %@", self.view, self.titleLabel);
    
    Test1View *view1 = [Test1View view];
    view1.frame = CGRectMake(0, 0, 100, 40);
    [self.container1View addSubview:view1];
    
    Test2View *view2 = [Test2View view];
    view2.frame = CGRectMake(0, 0, 100, 40);
    [self.container2View addSubview:view2];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"TestCustom, awakeFromNib, view = %@, titleLabel = %@", self.view, self.titleLabel);
}

- (UIView *)contentView {
    return self.view;
}

@end
