//
//  ViewController.m
//  sfb
//
//  Created by BSA Univ7 on 06/02/14.
//  Copyright (c) 2014 BSA Univ7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)shareBt {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        slcomposeviewcontroller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [slcomposeviewcontroller addImage:[UIImage imageNamed:@"_jeyalalitha1.jpg"]];
        [slcomposeviewcontroller addURL:[NSURL URLWithString:@"http://www.facebook.com/avrkrish"]];
        
        [self presentViewController:slcomposeviewcontroller animated:YES completion:NULL];
        
        
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"No facebook account" message:@"There is no fb account.you can create" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
        
    }
    
    
}


@end
