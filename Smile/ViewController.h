//
//  ViewController.h
//  Smile
//
//  Created by Guillem Fernández González on 18/04/13.
//  Copyright (c) 2013 Guillem Fernández González. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Smiley.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet Smiley *bigSmile;
@property (weak, nonatomic) IBOutlet Smiley *smail1;
@property (weak, nonatomic) IBOutlet Smiley *smile2;

- (IBAction)valueChanged:(id)sender;

@end
