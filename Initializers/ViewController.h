//
//  ViewController.h
//  Initializers
//
//  Created by Saurav  Mishra on 07/07/17.
//  Copyright © 2017 Saurav  Mishra. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ReusableView;

@interface ViewController : UIViewController

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil NS_UNAVAILABLE;

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

- (instancetype)initMakeThisTheDesignatedInitializer NS_DESIGNATED_INITIALIZER;

@property (weak, nonatomic) IBOutlet ReusableView *resuableView;
NS_ASSUME_NONNULL_END
@end



