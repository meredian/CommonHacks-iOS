
#import "UIImage+CommonHacks.h"

@implementation UIImage (CommonHacks)

#pragma mark - Size manipulating

- (UIImage *)resizeToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)fitToSize:(CGSize)size {
    CGFloat widthScale = self.size.width / size.width;
    CGFloat heightScale = self.size.height / size.height;
    CGSize newSize;
    if (widthScale > 1) {
        newSize = CGSizeMake(size.width, floorf(self.size.height / widthScale));
    } else if (heightScale > 1) {
        newSize = CGSizeMake(floorf(self.size.width / heightScale), size.height);
    } else {
        return self;
    }
    return [self resizeToSize:newSize];
}

- (UIImage *)cropWithRect:(CGRect)rect {
    UIGraphicsBeginImageContext(CGSizeMake(rect.size.width, rect.size.height));
    [self drawInRect:CGRectMake(-rect.origin.x, -rect.origin.y, self.size.width, self.size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)scaleForRetina {
    return [UIImage imageWithCGImage:self.CGImage scale:2.0 orientation:self.imageOrientation];
}

@end
