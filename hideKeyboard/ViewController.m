//
//  ViewController.m
//  hideKeyboard
//
//  Created by Jonas Scharpf on 26.04.13.
//  Copyright (c) 2013 Jonas Scharpf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //added
    [_inputTextField setReturnKeyType:UIReturnKeyDone]; //specifies the return key type to done
    _inputTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Added Code
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [_inputTextField resignFirstResponder];
    _outputTextLabel.text = _inputTextField.text;   //show entered text at output label
    return YES;
}
//End of added code

- (void)dealloc
{
    [_inputTextField release];
    [_outputTextLabel release];
    [super dealloc];
}
@end
