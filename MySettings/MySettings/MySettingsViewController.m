//
//  MySettingsViewController.m
//  MySettings
//
//  Created by Daniel Slabaugh on 4/9/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MySettingsViewController.h"

@interface MySettingsViewController ()

@end

@implementation MySettingsViewController
@synthesize title;
@synthesize favEvent;
@synthesize location;
NSMutableArray *location_picker;
NSString *locationSelected;


- (void)viewDidLoad
{
	// Do any additional setup after loading the view, typically from a nib.
    location_picker = [[NSMutableArray alloc] init];
    [location_picker addObject:@"Home"];
    [location_picker addObject:@"Work"];
    [location_picker addObject:@"Other"];
    [super viewDidLoad];
}

//---number of components in the Picker view---
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    return 1;
}

//---number of items(rows) in the Picker view---
- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component {
    return [location_picker count];
}

//---populating the Picker view---
- (NSString *)pickerView:(UIPickerView *)thePickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component {
    return [location_picker objectAtIndex:row];
}

//---the item selected by the user---
- (void)pickerView:(UIPickerView *)thePickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component {
    locationSelected = [location_picker objectAtIndex:row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [location_picker release];
    [locationSelected release];
    [title release];
    [favEvent release];
    [location release];
    [super dealloc];
}

- (IBAction)loadSettings:(id)sender {
}

- (IBAction)saveSettings:(id)sender {
}

- (IBAction)doneEditing:(id)sender {
    [sender resignFirstResponder];
}


@end
