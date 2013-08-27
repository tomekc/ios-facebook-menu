//
//  TCViewController.m
//  Smarciak
//
//  Created by Tomek Cejner on 8/26/13.
//  Copyright (c) 2013 Tomek Cejner. All rights reserved.
//

#import "TCViewController.h"

@interface TCViewController ()

@end

@implementation TCViewController {
    UIViewController *activityPanel;
    UIViewController *peoplePanel;
}

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

-(void) awakeFromNib
{
    activityPanel = [self.storyboard instantiateViewControllerWithIdentifier:@"navigationCtrl"];
    peoplePanel  = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleNavigationRoot"];
    
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    [self showActivity];

}

- (void)showActivity {
    [self setCenterPanel:activityPanel];
}

- (void)showPeople {
    [self setCenterPanel:peoplePanel];
}


@end
