//
//  ReusableView.h
//  Initializers
//
//  Created by Saurav  Mishra on 08/07/17.
//  Copyright © 2017 Saurav  Mishra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReusableView : UIView

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;
- (instancetype)initWithBackgroundColor:(UIColor *)color andBounds:(CGRect)frame NS_DESIGNATED_INITIALIZER;

 NS_ASSUME_NONNULL_END
@end
