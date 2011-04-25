//
//  TestViewController.h
//  Demoshow
//
//  Created by Tang Xiaoping on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"


@interface TestViewController : UIViewController {
    IBOutlet UITableView *ibTableView;
}

@property (nonatomic, retain) UITableView *ibTableView;
@end
