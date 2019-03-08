//
//  Test1View.m
//  AppRelaxIOS
//
//  Created by 21iMac_079 on 2019/3/7.
//

#import "Test1View.h"

@interface Test1View()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation Test1View

+ (instancetype)view {
    return [[[NSBundle mainBundle] loadNibNamed:@"Test1" owner:nil options:nil] firstObject];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"Test1View, awakeFromNib");
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSLog(@"Test1View, layoutSubviews");
}

@end
