//
//  MyViewController.h
//  HelloWorld
//
//  Created by Quantum Leap on 20.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyViewController : UIViewController <UITextFieldDelegate> {
    
    UITextField *textField;
    UILabel *label;
}
- (IBAction)changeGreeting:(id)sender;

@property (nonatomic, retain) IBOutlet UITextField *textField;

@property (nonatomic, retain) IBOutlet UILabel *label;

@property (nonatomic, copy) NSString *userName;

@end
