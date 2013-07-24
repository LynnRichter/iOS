//
//  Lynn_ViewController.m
//  ViewSwitch
//
//  Created by Lynnrichter on 13-7-24.
//  Copyright (c) 2013年 Lynn Richter. All rights reserved.
//

#import "Lynn_ViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface Lynn_ViewController ()

@end

@implementation Lynn_ViewController

@synthesize blueViewController,yellowViewController;

- (void)viewDidLoad
{
    
    BlueViewController *blueController=[[BlueViewController alloc] initWithNibName:@"BlueViewController" bundle:nil ];
    self.blueViewController=blueController;
    [self.view insertSubview:blueController.view atIndex:0];
    [blueController release];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    
    if(self.yellowViewController.view.superview==nil)
    {
        if(self.yellowViewController==nil)
        {
            YellowViewController *yellowController=[[YellowViewController alloc] initWithNibName:@"YellowViewController" bundle:nil];
            self.yellowViewController=yellowController;
            [yellowController release];
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight  forView:self.view cache:YES];
        [yellowViewController viewWillAppear:YES];
        [blueViewController viewWillDisappear:YES];
        
        
        [blueViewController.view removeFromSuperview];
        [self.view insertSubview:yellowViewController.view atIndex:0];
        
        [yellowViewController viewDidAppear:YES];
        [blueViewController viewDidDisappear:YES];
    }
    else
    {
        if(self.blueViewController==nil)
        {
            BlueViewController *blueController=[[BlueViewController alloc] initWithNibName:@"BlueViewController" bundle:nil ];
            self.blueViewController=blueController;
            
            [blueController release];

        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        [blueViewController viewWillAppear:YES];
        [yellowViewController viewWillDisappear:YES];
        
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:blueViewController.view atIndex:0];
        
        [blueViewController viewDidAppear:YES];
        [yellowViewController viewDidDisappear:YES];

    }
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    if(self.blueViewController.view.superview==nil)
    {
        self.blueViewController=nil;
        
    }
    else
    {
        self.yellowViewController=nil;
    }
    // Dispose of any resources that can be recreated.
}

-(void) dealloc
{
    [yellowViewController release];
    [blueViewController release];
    [super dealloc];
}

@end
