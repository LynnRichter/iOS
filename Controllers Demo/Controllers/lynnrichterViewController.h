//
//  lynnrichterViewController.h
//  Controllers
//
//  Created by Lynnrichter on 13-6-25.
//  Copyright (c) 2013年 Lynnrichter. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kSwitchesSegmentIndex 0

@interface lynnrichterViewController : UIViewController<UIActionSheetDelegate>
{
    UITextField *nameField;
    UITextField *numberField;
    UILabel *slideLabel;
    UISwitch *leftSwitch;
    UISwitch *rightSwitch;
    UIButton *doSomethingButton;
}
@property (nonatomic,retain) IBOutlet UITextField *nameField;
@property (nonatomic,retain) IBOutlet UITextField *numberField;
@property (nonatomic,retain) IBOutlet UILabel *slideLabel;
@property (nonatomic,retain) IBOutlet UISwitch *leftSwitch;
@property (nonatomic,retain) IBOutlet UISwitch *rightSwitch;
@property (nonatomic,retain) IBOutlet UIButton *doSomethingButton;


-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTap:(id)sender;
-(IBAction)slidbChanged:(id)sender;
-(IBAction)toggleControls:(id)sender;
-(IBAction)switchChanged:(id)sender;
-(IBAction)buttonPress;


@end
