//
//  UITableView+Ext.h
//  TT
//
//  Created by Aqib Mumtaz on 28/11/2014.
//  Copyright (c) 2014 Aqib Mumtaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Ext)

- (void)selectRowAtIndexPathEnforced:(NSIndexPath *)indexPath
                            animated:(BOOL)animated
                      scrollPosition:(UITableViewScrollPosition)scrollPosition;

@end
