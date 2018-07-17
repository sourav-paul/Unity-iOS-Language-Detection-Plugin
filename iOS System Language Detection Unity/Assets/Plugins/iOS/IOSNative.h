#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>

@interface IOSNative : NSObject { }

+ (IOSNative*) instance;

- (char *) getSysLang;

- (char *) cStringCopy : (const char *) str;

@end
