//
//  lynnrichterViewController.m
//  Controllers
//
//  Created by Lynnrichter on 13-6-25.
//  Copyright (c) 2013年 Lynnrichter. All rights reserved.
//

#import "lynnrichterViewController.h"

@interface lynnrichterViewController ()

@end


@implementation lynnrichterViewController


//这里到底是用来干吗的,不是太清楚
@synthesize nameField,numberField,slideLabel,leftSwitch,rightSwitch,doSomethingButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *buttonImageNormal=[UIImage imageNamed:@"whiteButton.png"];
    UIImage *stretchableButtonNormal =[buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [doSomethingButton setBackgroundImage:stretchableButtonNormal forState:UIControlStateNormal];
    
    UIImage *buttonImagePressed=[UIImage imageNamed:@"blueButton.png"];
    UIImage *stretchableButtonPressed=[buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [doSomethingButton setBackgroundImage:stretchableButtonPressed forState:UIControlStateHighlighted];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//点击完成按钮，隐藏键盘
-(IBAction)textFieldDoneEditing:(id)sender{

    [sender resignFirstResponder];
    
}
//触摸背景隐藏键盘
-(IBAction)backgroundTap:(id)sender
{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}
//滑动条滚动事件
-(IBAction)slidbChanged:(id)sender
{
    UISlider *slider=(UISlider *)sender;
    int progressAsInt=(int)(slider.value);
    NSString *newText=[[NSString alloc] initWithFormat:@"%d",progressAsInt];
    slideLabel.text=newText;
    [newText release];
    
    
}
//SegmentControl的changed事件
-(IBAction)toggleControls:(id)sender
{
    //由此来判断选择了哪一个index
    if([sender selectedSegmentIndex] == kSwitchesSegmentIndex)
    {
        leftSwitch.hidden=NO;
        rightSwitch.hidden=NO;
        doSomethingButton.hidden=YES;
    }
    else{
        leftSwitch.hidden=YES;
        rightSwitch.hidden=YES;
        doSomethingButton.hidden=NO;
    }
}


-(IBAction)switchChanged:(id)sender
{
    UISwitch *whichSwitch=(UISwitch *)sender;
    //这里判断switch的开关属性
    BOOL setting=whichSwitch.isOn;
    [leftSwitch setOn:setting animated:YES];
    [rightSwitch setOn:setting animated:YES];
}
//按钮点击事件
-(IBAction)buttonPress{
    
    //UIActionSheetView 的使用
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No Way" destructiveButtonTitle:@"Yes,I'm Sure!" otherButtonTitles:nil];
    [actionSheet showInView:self.view];
    [actionSheet release];
}

//操作表事件响应 要判断点击了哪个按钮。从0开始计数
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex!= [actionSheet cancelButtonIndex])
    {
        NSString *msg=nil;
        if(nameField.text.length>0)
        {
            msg=[[NSString alloc] initWithFormat:@"You can breathe easy,%@,everythring went OK.",nameField.text];
        }
        else
        {
            msg=@"You can breathe easy,everything went ok.";
            
        }
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Something was done" message:msg delegate:self cancelButtonTitle:@"Phew" otherButtonTitles:nil];
        [alert show];
        [alert release];
        [msg release];
    }
}

- (void)dealloc
{
    [nameField release];
    [numberField release];
    [slideLabel release];
    [leftSwitch release];
    [rightSwitch release];
    [doSomethingButton release];
    [super dealloc];
}

@end
