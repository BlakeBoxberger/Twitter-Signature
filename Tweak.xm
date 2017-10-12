#import "TSProvider.h"

@interface T1ComposeTextView : UITextView
@end

%hook T1ComposeTextView

- (void)didMoveToSuperview {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setText:) name:@"kTCSettingsChanged" object:nil];
}

- (void)setText:(NSString *)text {
    text = [[TSProvider sharedProvider] stringForKey:@"signature"];
    %orig(text);
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

%end
