//
//  MyViewController.m
//  HelloWorld
//
//  Created by Quantum Leap on 20.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"


@implementation MyViewController
@synthesize textField;
@synthesize label;
@synthesize userName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
// Standard dealloc method
- (void)dealloc
{
    
    [textField release];
    [label release];
    [userName release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = textField.text;
    NSString *nameString = self.userName;
    if([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Да здравствует %@!", nameString];
    label.text = greeting;
    [greeting release];
}
- (BOOL)textFieldShouldReturn:(UITextField *)thetextField {
    if(self.textField == thetextField) {
        [self.textField resignFirstResponder];
    }
    return YES;
}
@end
