//
//  JJSelectProjectView.m
//  JJXcodeProjectInstaller
//
//  Created by Jacob Jennings on 3/4/13.
//  Copyright (c) 2013 Jacob Jennings. All rights reserved.
//

#import "JJSelectProjectView.h"

@implementation JJSelectProjectView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    
    return self;
}

- (void)layout
{
    [super layout];
    NSSize buttonSize = self.xcodeIconButton.image.size;
    self.xcodeIconButton.frame = (CGRect) {
        .origin.x = round((self.bounds.size.width - buttonSize.width) / 2),
        .origin.y = round((self.bounds.size.height - buttonSize.height) / 2),
        .size = buttonSize
    };
}

@end
