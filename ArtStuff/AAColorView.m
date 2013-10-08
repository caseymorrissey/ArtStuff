//
//  AAColorView.m
//  ArtStuff
//
//  Created by Kyle Oba on 10/4/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAColorView.h"

@implementation AAColorView


- (void)changeColorForPercentage:(CGFloat)percentage;
{
    self.backgroundColor = [UIColor colorWithHue:percentage saturation:1.0 brightness:1.0 alpha:1.0];
}

@end
