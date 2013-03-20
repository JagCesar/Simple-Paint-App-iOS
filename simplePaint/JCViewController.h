//
//  JCViewController.h
//  simplePaint
//
//  Created by César Manuel Pinto Castillo on 2/17/12.
//  Copyright (c) 2012 AveCesar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCDrawView.h"

@interface JCViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIBarButtonItem *exportButton;

- (IBAction)setBlackColor:(id)sender;
- (IBAction)setRedColor:(id)sender;
- (IBAction)setGreenColor:(id)sender;
- (IBAction)setBlueColor:(id)sender;
- (IBAction)reset:(id)sender;
- (IBAction)setWhiteColor:(id)sender;

@end
