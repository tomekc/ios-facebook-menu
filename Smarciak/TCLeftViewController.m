//
//  TCLeftViewController.m
//  Smarciak
//
//  Created by Tomek Cejner on 8/26/13.
//  Copyright (c) 2013 Tomek Cejner. All rights reserved.
//

#import <Nimbus/NIDOM.h>
#import <Nimbus/NIStylesheetCache.h>
#import <JASidePanels/JASidePanelController.h>
#import "UIViewController+JASidePanel.h"
#import "TCLeftViewController.h"

#import "NIStylesheet.h"
#import "TCViewController.h"

@interface TCLeftViewController ()
{
    NSArray *options;
    NIStylesheetCache *stylesheetCache;
    NIDOM *_dom;

}

@end

@implementation TCLeftViewController

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
    options = @[@"Activity", @"Candidates", @"Jobs", @"Reports"];
    [super viewDidLoad];
	// Do any additional setup after loading the view.

//    stylesheetCache = [[NIStylesheetCache alloc] initWithPathPrefix:@"/"];

//    NIStylesheet* stylesheet = [stylesheetCache stylesheetWithPath:@"style.css"];

    NIStylesheet* stylesheet = [[NIStylesheet alloc] init];
    [stylesheet loadFromPath:@"style.css"];



    NSLog(@"Stylesheet %@", stylesheet);
    _dom = [[NIDOM alloc] initWithStylesheet:stylesheet];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [_dom refresh];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [options count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    [_dom registerView:cell.contentView withCSSClass:@"sidecell"];
    //[_dom registerView:cell.textLabel withCSSClass:@"sidecell"];

    // Configure the cell...
    cell.textLabel.text = [options objectAtIndex:indexPath.row];

    NSLog(@"%@", [_dom description]);
    [_dom refresh];

    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    //id peopleViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PeopleNavigationRoot"];



    //NSLog(@"Klaska %@", self.sidePanelController.class);



    //self.sidePanelController.centerPanel = peopleViewController;
    TCViewController *mainvc = (TCViewController *) self.sidePanelController;

    if (indexPath.row == 0) {
        [mainvc showActivity];
    }

    if (indexPath.row == 1) {
        [mainvc showPeople];
    }


}


@end
