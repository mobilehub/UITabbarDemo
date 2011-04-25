//
//  DetailViewController.h
//  MyUITableView
//
//  Created by Ondrej Rafaj on 20.8.09.
//  Copyright 2009 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"


@interface DetailViewController : UIViewController {
	
	IBOutlet UILabel *myLabel;
	
	NSString *myProgLang;
	
}

@property (nonatomic, retain) IBOutlet UILabel *myLabel;
@property (nonatomic, retain) NSString *myProgLang;

@end
