#import "Headers/MusiClasses.h"

%group greaterThenOrEqualToIOS17

%hook MBackupCodeCacheController

- (void)cacheBackupCode:(id)backupCode completionBlock:(id)completionBlock {}
- (void)fetchLegacyBackupCodesWithCompletionBlock:(id)completionBlock {}

%end

%end

%ctor {
    if ([UIDevice currentDevice].systemVersion.floatValue >= 17.0) {
        %init(greaterThenOrEqualToIOS17);
    }
}