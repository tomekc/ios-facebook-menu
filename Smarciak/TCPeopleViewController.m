//
//  TCPeopleViewController.m
//  Smarciak
//
//  Created by Tomek Cejner on 8/27/13.
//  Copyright (c) 2013 Tomek Cejner. All rights reserved.
//

#import "TCPeopleViewController.h"

@interface TCPeopleViewController ()

@end

@implementation TCPeopleViewController

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
    NSLog(@"People View Controller did load!");
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
