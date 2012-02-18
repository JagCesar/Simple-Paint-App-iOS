//
//  JCDrawView.h
//  simplePaint
//
//  Created by César Manuel Pinto Castillo on 2/17/12.
//  Copyright (c) 2012 AveCesar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface JCDrawView : UIView

@property (nonatomic,retain) IBOutlet UIImageView *drawImageView;
@property (nonatomic,retain) UIColor *currentColor;

@property (nonatomic) CGPoint lastPoint;
@property (nonatomic) CGPoint prePreviousPoint;
@property (nonatomic) CGPoint previousPoint;
@property (nonatomic) CGFloat lineWidth;

@end
