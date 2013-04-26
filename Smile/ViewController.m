//
//  ViewController.m
//  Smile
//
//  Created by Guillem Fernández González on 18/04/13.
//  Copyright (c) 2013 Guillem Fernández González. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)valueChanged:(id)sender {
    
    UISlider *mySlider = (UISlider *)sender;
    
    _bigSmile.smileLevel = mySlider.value;
    _smail1.smileLevel = mySlider.value;
    _smile2.smileLevel = mySlider.value;
}

@end
