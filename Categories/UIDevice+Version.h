
#import <Foundation/Foundation.h>

@interface UIDevice (Version)

+ (BOOL)systemVersionEqualTo:(NSString *)version;
+ (BOOL)systemVersionGreaterThan:(NSString *)version;
+ (BOOL)systemVersionGreaterThanOrEqualTo:(NSString *)version;
+ (BOOL)systemVersionLessThan:(NSString *)version;
+ (BOOL)systemVersionLessThanEqualTo:(NSString *)version;

@end
