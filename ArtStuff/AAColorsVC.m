//
//  AAColorsVC.m
//  ArtStuff
//
//  Created by Kyle Oba on 10/4/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAColorsVC.h"
#import "AAColorView.h"
#import <QuartzCore/QuartzCore.h>

@interface AAColorsVC ()
@property (weak, nonatomic) IBOutlet AAColorView *ColorMyApp;
@property (weak, nonatomic) IBOutlet AAColorView *grayscaleColorView;
@property (strong, nonatomic) CADisplayLink *displayLink;
@property (weak, nonatomic) IBOutlet AAColorView *secondsColorView;
@end

@implementation AAColorsVC

- (void)tick: (CADisplayLink *)sender
{
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *now = [NSDate date];
    NSDateComponents *dateComps = [cal components:NSSecondCalendarUnit fromDate:now];
    NSLog(@"seconds: %i", [dateComps second]);
    
    CGFloat percentage = [dateComps second] / 60.0;
    [self.secondsColorView changeColorForPercentage:percentage];
    [self.grayscaleColorView changeColorForPercentage:percentage];
    [self.ColorMyApp changeColorForPercentage:percentage];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"hello world");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    self.displayLink.frameInterval = 30; // about every half second
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [self.displayLink invalidate];
    self.displayLink = nil;
}

@end
