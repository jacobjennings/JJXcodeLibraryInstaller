//
//  JJXcodeProjectOptionsViewController.h
//  JJXcodeProjectInstaller
//
//  Created by Jacob Jennings on 3/3/13.
//  Copyright (c) 2013 Jacob Jennings. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "JJSelectProjectView.h"
#import "JJXcodeProjectOptionsView.h"

@interface JJXPIWindowController : NSWindowController
@property (weak) IBOutlet JJSelectProjectView *selectProjectView;
@property (weak) IBOutlet JJXcodeProjectOptionsView *projectOptionsView;

@end
