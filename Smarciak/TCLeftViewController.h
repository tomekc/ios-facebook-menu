//
//  TCLeftViewController.h
//  Smarciak
//
//  Created by Tomek Cejner on 8/26/13.
//  Copyright (c) 2013 Tomek Cejner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+JASidePanel.h"

@interface TCLeftViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>



@property IBOutlet UITableView *tview;

@end
