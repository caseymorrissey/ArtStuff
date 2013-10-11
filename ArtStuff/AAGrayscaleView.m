//
//  AAGrayscaleView.m
//  ArtStuff
//
//  Created by Casey Morrissey on 10/9/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAGrayscaleView.h"

@implementation AAGrayscaleView

-(void)changeColorForPercentage:(CGFloat)percentage;
{
    [UIColor colorWithWhite:percentage alpha:1.0];
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
