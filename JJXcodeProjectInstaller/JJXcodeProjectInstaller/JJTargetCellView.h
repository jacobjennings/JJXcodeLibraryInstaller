//
//  JJTargetCellView.h
//  JJXcodeProjectInstaller
//
//  Created by Jacob Jennings on 3/4/13.
//  Copyright (c) 2013 Jacob Jennings. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JJTargetCellView : NSTableCellView

@property (weak) IBOutlet NSImageView *leftImageView;
@property (weak) IBOutlet NSTextFieldCell *leftTextFieldCell;
@property (weak) IBOutlet NSButton *rightCheckBoxButton;

@end
