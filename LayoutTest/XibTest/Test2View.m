//
//  Test2View.m
//  AppRelaxIOS
//
//  Created by 21iMac_079 on 2019/3/7.
//

#import "Test2View.h"

@interface Test2View()

@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation Test2View

+ (instancetype)view {
    return [[Test2View alloc] init];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Test2" owner:self options:nil];
        self.view.frame = CGRectMake(0, 0, 30, 30);
        [self addSubview:self.view];
        
        NSLog(@"Test2View, init, view = %@, titleLabel = %@", self.view, self.titleLabel);
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSLog(@"Test2View, awakeFromNib");
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSLog(@"Test2View, layoutSubviews");
}

@end
