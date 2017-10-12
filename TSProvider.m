#include "TSProvider.h"

@implementation TSProvider

#pragma mark Initialization

+ (CSPreferencesProvider *)sharedProvider {
    static dispatch_once_t once;
    static CSPreferencesProvider *sharedProvider;
    dispatch_once(&once, ^{
        NSString *tweakId = @"com.neinzedd9.twittersignaturepreferences";
        NSString *prefsNotification = [tweakId stringByAppendingString:@".prefschanged"];
        NSDictionary *defaults = @{@"Enabled": @(YES), @"signature": @"\n@ladygaga Favorite Female Artist Pop/Rock #AMAs"};

        sharedProvider = [[CSPreferencesProvider alloc] initWithTweakID:tweakId defaults:defaults postNotification:prefsNotification notificationCallback:nil];
    });
    return sharedProvider;
}

@end
