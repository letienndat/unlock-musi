#import "Headers/MusiClasses.h"

%group fixBackupCodeCache

%hook MBackupCodeCacheController

- (void)cacheBackupCode:(id)backupCode completionBlock:(id)completionBlock {}
- (void)fetchLegacyBackupCodesWithCompletionBlock:(id)completionBlock {}

%end

%end

%ctor {
    if ([UIDevice currentDevice].systemVersion.floatValue != 16.2f) {
        %init(fixBackupCodeCache);
    }
}