//
//  ViewController.m
//  Initializers
//
//  Created by Saurav  Mishra on 07/07/17.
//  Copyright © 2017 Saurav  Mishra. All rights reserved.
//

#import "ViewController.h"
#import "ReusableView.h"

@implementation ViewController

-(instancetype)initMakeThisTheDesignatedInitializer
{
    self = [super initWithNibName:nil bundle:nil];
    
    if(self)
    {
        
    }
    
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    ReusableView *reusableView = [[ReusableView alloc] initWithBackgroundColor:[UIColor orangeColor] andBounds:self.resuableView.bounds];
    [self.resuableView addSubview:reusableView];
}
@end
