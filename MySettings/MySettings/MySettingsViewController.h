//
//  MySettingsViewController.h
//  MySettings
//
//  Created by Daniel Slabaugh on 4/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MySettingsViewController : UIViewController
{
    IBOutlet UITextField *favEvent;
    IBOutlet UITextField *title;
    IBOutlet UIPickerView *location;
    
}
@property (retain, nonatomic) IBOutlet UITextField *favEvent;
@property (retain, nonatomic) IBOutlet UITextField *title;
@property (retain, nonatomic) IBOutlet UIPickerView *location;

- (IBAction)loadSettings:(id)sender;
- (IBAction)saveSettings:(id)sender;
-(IBAction) doneEditing: (id) sender;

@end
