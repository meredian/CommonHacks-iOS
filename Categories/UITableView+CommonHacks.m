
#import "UITableView+CommonHacks.h"

@implementation UITableView (CommonHacks)

- (CGFloat)defaultCellWidth {
    return self.frame.size.width - (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 56*2 : 20*2);
}

- (CGFloat)defaultCellHeight {
    return 44;
}

@end
