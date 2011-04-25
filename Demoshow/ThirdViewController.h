//
//  ThiredViewController.h
//  Demoshow
//
//  Created by Tang Xiaoping on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThiredViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    IBOutlet UITableView *ibTableView;
}

@property (nonatomic, retain) UITableView *ibTableView;
@end
