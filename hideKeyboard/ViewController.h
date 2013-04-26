//
//  ViewController.h
//  hideKeyboard
//
//  Created by Jonas Scharpf on 26.04.13.
//  Copyright (c) 2013 Jonas Scharpf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    
}

@property (retain, nonatomic) IBOutlet UITextField *inputTextField;
@property (retain, nonatomic) IBOutlet UILabel *outputTextLabel;

@end
