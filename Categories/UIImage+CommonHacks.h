
#import <UIKit/UIKit.h>

@interface UIImage (CommonHacks)

- (UIImage *)resizeToSize:(CGSize)size;
- (UIImage *)fitToSize:(CGSize)size;
- (UIImage *)cropWithRect:(CGRect)rect;

- (UIImage *)scaleForRetina;
@end
