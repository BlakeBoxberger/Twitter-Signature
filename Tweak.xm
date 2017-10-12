#import "TSProvider.h"

@interface T1ComposeTextView : UITextView
@end

%hook T1ComposeTextView

- (void)setText: (NSString *)text {
    text = [[TSProvider sharedProvider] stringForKey:@"signature"];
    %orig(text);
}

%end
