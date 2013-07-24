//
//  Lynn_ViewController.h
//  ViewSwitch
//
//  Created by Lynnrichter on 13-7-24.
//  Copyright (c) 2013年 Lynn Richter. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YellowViewController;
@class BlueViewController;

@interface Lynn_ViewController : UIViewController
{
    YellowViewController *yellowViewController;
    BlueViewController *blueViewController;
}
    
@property (retain,nonatomic) YellowViewController *yellowViewController;
@property (retain,nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;
@end
