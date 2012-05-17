//
//  MainViewController.m
//  testKSPopOverView
//
//  Created by  on 12-5-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}



-(void)addDropDownMenuList
{
    UIImage *image = [UIImage imageNamed:@"buttonbg~iphone"];
	_menu = [[KSPopoverView alloc] initWithType:KSPopoverTypeOnOffLabel
										  image:image
										  point:CGPointMake(150.0f, 4.0f)];
	_menu.delegate = self;
	_menu.position = KSPopoverPositionBottomCenter;
    _menu.offset = 50;
	
    [self.view addSubview: _menu];
    //AppDelegate*myapp =  (AppDelegate*)[[UIApplication sharedApplication] delegate] ;
    //[myapp.window addSubview:_menu];
    
	[_menu addButtonWithTitle:@"动态类别1"];
	[_menu addButtonWithTitle:@"动态类别2"];
	[_menu addButtonWithTitle:@"动态类别3"];
	[_menu addButtonWithTitle:@"动态类别4"];
	[_menu addButtonWithTitle:@"动态类别5"];
	[_menu addButtonWithTitle:@"动态类别6"];
}
#pragma mark -
- (void)popoverView:(KSPopoverView *)view selectedButtonIndex:(NSInteger)buttonIndex
           withInfo:(NSDictionary *)info {
    NSLog(@"Pushed %dth button. info:%@", buttonIndex, info);
	KSPopoverViewButtonBase *button = [view labelAtIndex:buttonIndex];
	//button.text = @"pressed";
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addDropDownMenuList];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

@end
