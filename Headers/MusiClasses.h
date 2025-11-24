#import <UIKit/UIKit.h>

// Define UIViewController
@interface MBackupCodeCacheController: UIViewController
- (void)cacheBackupCode:(id)backupCode completionBlock:(id)completionBlock;
- (void)fetchLegacyBackupCodesWithCompletionBlock:(id)completionBlock;
@end