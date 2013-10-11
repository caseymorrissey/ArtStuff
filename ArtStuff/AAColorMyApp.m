//
//  AAColorMyApp.m
//  ArtStuff
//
//  Created by Casey Morrissey on 10/11/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAColorMyApp.h"

@implementation AAColorMyApp

- (void)changeColorForPercentage:(CGFloat)percentage;

{

    CGFloat newPercentage = percentage + 0.1;
    [super changeColorForPercentage:newPercentage];

}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
