#import "Headers/MusiClasses.h"

%hook INVocabulary

- (void)setVocabularyStrings:(id)vocabulary ofType:(NSInteger)type { }
- (void)setVocabulary:(id)vocabulary ofType:(NSInteger)type { }
- (void)_THROW_EXCEPTION_FOR_PROCESS_MISSING_ENTITLEMENT_com_apple_developer_siri { }

%end