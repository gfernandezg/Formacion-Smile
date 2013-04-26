//
//  Smiley.m
//  Smile
//
//  Created by Guillem Fernández González on 18/04/13.
//  Copyright (c) 2013 Guillem Fernández González. All rights reserved.
//

#import "Smiley.h"

@implementation Smiley

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _smileLevel = 20;
    }
    return self;
}

- (void)awakeFromNib
{
    _smileLevel = 20;
}

- (void)setSmileLevel:(int)smileLevel
{
    _smileLevel = smileLevel;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(context);
    
    // Head
    CGRect goodRect = CGRectMake(10.0f, 10.0f,
                                 self.bounds.size.width - 20.0f, self.bounds.size.height - 20.0f);
    CGContextAddEllipseInRect(context, goodRect);
    
    // Left Eye
    CGPoint centerEye = CGPointMake(goodRect.size.width/3+goodRect.origin.x,
                                    goodRect.size.height/3+goodRect.origin.y);
    CGRect leftEye = CGRectMake(centerEye.x-5, centerEye.y-5,
                                     10.0f, 10.0f);
    CGContextAddEllipseInRect(context, leftEye);

    // Right Eye
    CGRect rightEyeRect = CGRectMake(centerEye.x-5+(goodRect.size.width/3), centerEye.y-5,
                                     10.0f, 10.0f);
    CGContextAddEllipseInRect(context, rightEyeRect);

    // Mouth
    CGPoint startMouth = CGPointMake(goodRect.size.width/3+goodRect.origin.x,
                                     (goodRect.size.height*2/3)+goodRect.origin.y);
    CGPoint endMouth = CGPointMake((goodRect.size.width*2/3)+goodRect.origin.x,
                                     (goodRect.size.height*2/3)+goodRect.origin.y);
    CGContextMoveToPoint(context, startMouth.x, startMouth.y);
    CGContextAddCurveToPoint(context,startMouth.x+10, startMouth.y+_smileLevel,
                             endMouth.x-10, endMouth.y+_smileLevel,
                             endMouth.x, endMouth.y);

    
    CGContextClosePath(context);
    
    
    CGContextSetLineWidth(context, 2.0f);
    CGFloat black[4] = {0, 0, 0, 1};
    CGContextSetStrokeColor(context, black);
    CGContextStrokePath(context);
}

@end
