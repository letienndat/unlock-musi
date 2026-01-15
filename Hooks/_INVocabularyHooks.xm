#import "Headers/MusiClasses.h"

%hook _INVocabulary

- (void)_THROW_EXCEPTION_FOR_INVALID_VOCABULARY_TYPE_ {}

%end