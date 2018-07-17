#import "IOSNative.h"

char *GetSysLang()
{
    char *lang = [[IOSNative instance] getSysLang];
    
    return lang;
}
