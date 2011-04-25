//
//  FirstViewController.m
//  Demoshow
//
//  Created by Tang Xiaoping on 4/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

@synthesize ibTableView;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
//	CGFloat navHeight = 44;
//	
//	UIBarButtonItem * button = [[UIBarButtonItem alloc] initWithTitle:@"New Title" style:UIBarButtonItemStyleBordered target:nil action:nil];
//	[[self navigationItem] setLeftBarButtonItem:button];
//	[button release];
//	
//	navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, navHeight)];
//	[navBar setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
//	[navBar setItems:[NSArray arrayWithObject:self.navigationItem]];
//	
//	
//	[self.view addSubview:navBar];
	self.navigationController.navigationBar.backItem.title = @"Custom";
	
	
	self.title = @"Pay Info";
	
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

#pragma mark -- TableViewSourceDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	if (section == 0) {
		return nil;
	}
	else if (section == 1) {
		return  @"From";
	}
	else 

	return  @"To";
	//return  nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	if (section == 0) {
		return 10;
	}
	return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
	
	if (indexPath.section == 0) {
		if (indexPath.row == 0) {
			cell.textLabel.text = @"Status:     Pending submission";
		}
		else if (indexPath.row == 1) {
			cell.textLabel.text = @"Perno:      S1234567F";
		}
		else if (indexPath.row == 2) {
			cell.textLabel.text = @"Claim Month:      April 2011";
		}
		else if (indexPath.row == 3) {
			cell.textLabel.text = @"PayRC:    General's dept";
		}
		else if (indexPath.row == 4) {
			cell.textLabel.text = @"Residential Address:  ";
		}
		else if (indexPath.row == 5) {
			cell.textLabel.text = @"Office Address:  ";
		}
		else if (indexPath.row == 6) {
			cell.textLabel.text = @"CO: ";
		}
		else if (indexPath.row == 7) {
			cell.textLabel.text = @"PayRC:    General's dept";
		}
		else if (indexPath.row == 8) {
			cell.textLabel.text = @"PayRC:    General's dept";
		}
	}
	else {
	
		cell.textLabel.text = @"April 2011";

	}
	
    return cell;
}


#pragma mark -- UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *selectedLang = @"Pay Advance";
	
	DetailViewController *myDetViewCont = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:[NSBundle mainBundle]]; // creating new detail view controller instance
	// you can use this as well the .xib file has the same name as your controller class:
	// DetailViewController *myDetViewCont = [[DetailViewController alloc] init];
	
	myDetViewCont.myProgLang = selectedLang; // assigning the correct value to the variable inside DetailViewController
	[self.navigationController pushViewController:myDetViewCont animated:YES]; // "Pushing the controller on the screen"
	[myDetViewCont release]; // releasing controller from the memory
	myDetViewCont = nil;
}

@end
