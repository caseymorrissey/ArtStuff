//
//  AAViewController.m
//  ArtStuff
//
//  Created by Kyle Oba on 10/4/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AAViewController ()
@property (strong, nonatomic) CADisplayLink *displayLink;

@end

@implementation AAViewController

- (void)tick:(CADisplayLink *) sender;
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
