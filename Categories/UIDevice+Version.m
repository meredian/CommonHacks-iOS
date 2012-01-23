
#import "UIDevice+Version.h"

@implementation UIDevice (Version)

+ (BOOL)systemVersionEqualTo:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] == NSOrderedSame;
}

+ (BOOL)systemVersionGreaterThan:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] == NSOrderedDescending;
}

+ (BOOL)systemVersionGreaterThanOrEqualTo:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] != NSOrderedAscending;
}

+ (BOOL)systemVersionLessThan:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] == NSOrderedAscending;
}

+ (BOOL)systemVersionLessThanEqualTo:(NSString *)version {
    return [[[UIDevice currentDevice] systemVersion] compare:version options:NSNumericSearch] != NSOrderedDescending;
}

@end
