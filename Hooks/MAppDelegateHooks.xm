#import "Headers/MusiClasses.h"

NSString *keyRemoveAds = @"MViewControllerRemovedAdvertisementsKey";

%hook MAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL res = %orig(application, launchOptions);

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:YES forKey:keyRemoveAds];

    return res;
}

%end