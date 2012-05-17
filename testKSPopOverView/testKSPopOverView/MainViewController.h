//
//  MainViewController.h
//  testKSPopOverView
//
//  Created by  on 12-5-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"
#import "KSPopoverView.h"
#import <CoreGraphics/CoreGraphics.h>
@interface MainViewController : UIViewController <FlipsideViewControllerDelegate,KSPopoverViewDelegate>
{
    ////////////////////////////////
    KSPopoverView *_menu;
}
- (IBAction)showInfo:(id)sender;

@end
