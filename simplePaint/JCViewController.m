//
//  JCViewController.m
//  simplePaint
//
//  Created by César Manuel Pinto Castillo on 2/17/12.
//  Copyright (c) 2012 AveCesar. All rights reserved.
//

#import "JCViewController.h"

@implementation JCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        [(JCDrawView*)[self view] setPreviousPoint:CGPointZero];
        [(JCDrawView*)[self view] setPrePreviousPoint:CGPointZero];
        [(JCDrawView*)[self view] setLineWidth:1.0];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        return YES;
    } else {
        return NO;
    }
}

#pragma mark - IBActions

- (IBAction)setBlackColor:(id)sender {
    [(JCDrawView*)[self view] setCurrentColor:[UIColor blackColor]];
}

- (IBAction)setRedColor:(id)sender {
    [(JCDrawView*)[self view] setCurrentColor:[UIColor redColor]];
}

- (IBAction)setGreenColor:(id)sender {
    [(JCDrawView*)[self view] setCurrentColor:[UIColor greenColor]];
}

- (IBAction)setBlueColor:(id)sender {
    [(JCDrawView*)[self view] setCurrentColor:[UIColor blueColor]];
}

- (IBAction)reset:(id)sender {
    [[(JCDrawView*)[self view] drawImageView] setImage:nil];
}

- (IBAction)exportImage:(id)sender {
    UIImage *image = [(JCDrawView *)[self view] image];
    if (image != nil) {
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didExportWithError:contextInfo:), nil);
    }
}

- (void)image:(UIImage *)image didExportWithError:(NSError *)error contextInfo:(void *)contextInfo {
    NSString *message = @"Image successfully saved to Camera Roll";
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:message delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
    
    if (error) {
        message = [NSString stringWithFormat:@"Couldn't save image.\n%@", [error localizedDescription]];
        [alert setMessage:message];
        [alert setCancelButtonIndex:[alert addButtonWithTitle:@"Okay"]];
    } else {
        [alert setCancelButtonIndex:[alert addButtonWithTitle:@"Done"]];
    }
    
    [alert show];
    alert = nil;
}

@end
