//
//  UITableView+Ext.h
//
//  Created by Aqib Mumtaz on 28/11/2014.
//

#import <UIKit/UIKit.h>

@interface UITableView (Ext)

- (void)selectRowAtIndexPathEnforced:(NSIndexPath *)indexPath
                            animated:(BOOL)animated
                      scrollPosition:(UITableViewScrollPosition)scrollPosition;

@end
