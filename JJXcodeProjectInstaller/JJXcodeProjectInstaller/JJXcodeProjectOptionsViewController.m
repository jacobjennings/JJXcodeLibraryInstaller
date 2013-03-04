//
//  JJXcodeProjectOptionsViewController.m
//  JJXcodeProjectInstaller
//
//  Created by Jacob Jennings on 3/3/13.
//  Copyright (c) 2013 Jacob Jennings. All rights reserved.
//

#import "JJXcodeProjectOptionsViewController.h"
#import "JJTargetCellView.h"

@interface JJXcodeProjectOptionsViewController () <NSTableViewDataSource, NSTableViewDelegate>

@end

@implementation JJXcodeProjectOptionsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"awoke. view: %@", self.view);
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
