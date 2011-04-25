//
//  LoginView.h
//  PacAtGov
//
//  Created by Tang Xiaoping on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginView : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UITableView *loginText;
}

@property(nonatomic, retain) UITableView *loginText;
@end
