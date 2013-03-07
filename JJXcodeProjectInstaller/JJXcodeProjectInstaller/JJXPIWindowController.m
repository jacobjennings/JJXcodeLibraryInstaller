//
//  JJXcodeProjectOptionsViewController.m
//  JJXcodeProjectInstaller
//
//  Created by Jacob Jennings on 3/3/13.
//  Copyright (c) 2013 Jacob Jennings. All rights reserved.
//

#import "JJXPIWindowController.h"
#import "JJTargetCellView.h"
#import "XcodeEditor.h"

NS_ENUM(NSInteger, JJXcodeProjectOptionsViewControllerState)
{
    JJXcodeProjectOptionsViewControllerStateProjectNotLoaded,
    JJXcodeProjectOptionsViewControllerStateChooseAStrategy,
    JJXcodeProjectOptionsViewControllerStateChooseTargets
};

@interface JJXPIWindowController () <NSTableViewDataSource, NSTableViewDelegate>

@property (nonatomic, assign) enum JJXcodeProjectOptionsViewControllerState state;

@end

@implementation JJXPIWindowController


- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self)
    {
        
    }
    return self;
}

- (void)awakeFromNib
{
    self.state = JJXcodeProjectOptionsViewControllerStateProjectNotLoaded;
}

- (void)setState:(enum JJXcodeProjectOptionsViewControllerState)state
{
    _state = state;
    
    switch (state) {
        case JJXcodeProjectOptionsViewControllerStateProjectNotLoaded:
        {
            NSImage *icon = [[NSWorkspace sharedWorkspace] iconForFile:@"/Applications/Xcode.app"];
            icon.size = (CGSize) { .width = 256, .height = 256 };
            [self.selectProjectView.xcodeIconButton setImage:icon];
            break;
        }
            
        case JJXcodeProjectOptionsViewControllerStateChooseAStrategy:
        {
            
            break;
        }
            
        case JJXcodeProjectOptionsViewControllerStateChooseTargets:
        {
            
            break;
        }
            
        default:
        {
            
            break;
        }
    }
}


#pragma mark - NSTableViewDataSource

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 4;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;
{
    return nil;
}

#pragma mark - NSTableViewDelegate

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;
{
    JJTargetCellView *targetCellView = [tableView makeViewWithIdentifier:@"JJTargetCellView" owner:nil];
    targetCellView.leftTextFieldCell.title = @"Something";
    NSLog(@"Made targetCellView: %@", targetCellView);
    return targetCellView;
}

@end
