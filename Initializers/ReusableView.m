//
//  ReusableView.m
//  Initializers
//
//  Created by Saurav  Mishra on 08/07/17.
//  Copyright © 2017 Saurav  Mishra. All rights reserved.
//

#import "ReusableView.h"
@interface ReusableView ()
@property (strong, nonatomic) IBOutlet UIView *containerView;
@end
@implementation ReusableView

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super initWithCoder:aDecoder];
//    if (self) {
//                return self;
//    }
//    return nil;
//}
//
//
//- (instancetype)init
//{
//    self =[super init];
//    return self;
//}
//
//-(instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    return self;
//}

-(instancetype)initWithBackgroundColor:(UIColor *)color andBounds:(CGRect)bounds
{
    self = [super initWithFrame:bounds];
    
    if (self) {
        self.backgroundColor = color;
        [self setUpViewForBounds:bounds];
    }
    return self;
}


-(void)setUpViewForBounds:(CGRect)bounds
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *className = NSStringFromClass([self class]);
    self.containerView = [[bundle loadNibNamed:className owner:self options:nil] lastObject];
    self.containerView.frame = bounds;
    [self addSubview:self.containerView];

}


- (IBAction)switchBackgroundColor:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            
            self.containerView.backgroundColor = [UIColor orangeColor];
            
            break;
        case 1:
            self.containerView.backgroundColor = [UIColor yellowColor];
            break;
        default:
            break;
    }
    
}

@end
