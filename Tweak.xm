@interface T1ComposeTextView : UITextView
@end

%hook T1ComposeTextView

- (void)setText:(NSString *)arg1 {
	%orig(@"\n@ladygaga Favorite Female Artist Pop/Rock #AMAs");
}

%end
