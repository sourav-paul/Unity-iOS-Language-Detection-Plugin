#import "Foundation/Foundation.h"
#import "IOSNative.h"
#import "UIKit/UIKit.h"
#import "GameKit/GameKit.h"

@implementation IOSNative

+ (IOSNative *)instance
{
    static IOSNative *instance = nil;
    if( !instance )
        instance = [[IOSNative alloc] init];
    return instance;
}

- (char *) getSysLang
{
    NSString *lang = [[NSLocale preferredLanguages] objectAtIndex:0];
    
    return [[IOSNative instance] cStringCopy : [lang UTF8String]];
}

- (char *) cStringCopy : (const char *) str
{
    if(str == NULL)
    {
        return NULL;
    }
    
    char * res = (char *)malloc(strlen(str) + 1);
    
    strcpy(res, str);
    
    return res;
}
@end
