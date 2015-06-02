//
//  UITableView+Ext.m
//  TT
//
//  Created by Aqib Mumtaz on 28/11/2014.
//  Copyright (c) 2014 Aqib Mumtaz. All rights reserved.
//

#import "UITableView+Ext.h"

@implementation UITableView (Ext)

- (void)selectRowAtIndexPathEnforced:(NSIndexPath *)indexPath
                            animated:(BOOL)animated
                      scrollPosition:(UITableViewScrollPosition)scrollPosition {

  UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
  [cell setSelected:YES];

  [self selectRowAtIndexPath:indexPath
                    animated:YES
              scrollPosition:scrollPosition];

  if ([self.delegate
          respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]) {
    [self.delegate tableView:self didSelectRowAtIndexPath:indexPath];
  }

  @try {
    [self scrollToRowAtIndexPath:indexPath
                atScrollPosition:scrollPosition
                        animated:YES];
  } @catch (NSException *exception) {
  }
}

@end
