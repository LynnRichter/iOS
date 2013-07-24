//
//  BlueViewController.m
//  ViewSwitch
//
//  Created by Lynnrichter on 13-7-24.
//  Copyright (c) 2013年 Lynn Richter. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)blueButtonPress:(id)sender
{
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Pressed!" message:@"Blue Button was pressed." delegate:nil cancelButtonTitle:@"Yep,I did." otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
