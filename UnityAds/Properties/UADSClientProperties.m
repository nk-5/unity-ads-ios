#import "UADSClientProperties.h"
#import "UADSDevice.h"

@implementation UADSClientProperties

static NSString *_gameId = @"-1";
__unsafe_unretained static UIViewController *_currentViewController = nil;
static id<UnityAdsDelegate> _delegate = nil;

+ (void)setGameId:(NSString *)gid {
    _gameId = gid;
}

+ (NSString *)getGameId {
    return _gameId;
}

+ (NSArray<NSString*>*)getSupportedOrientationsPlist {
    NSArray<NSString*> *supportedOrientations = @[];
    if ([NSBundle.mainBundle.infoDictionary objectForKey:@"UISupportedInterfaceOrientations"] != nil) {
        supportedOrientations = [supportedOrientations arrayByAddingObjectsFromArray:[NSBundle.mainBundle.infoDictionary objectForKey:@"UISupportedInterfaceOrientations"]];
    }
    return supportedOrientations;
}

+ (int)getSupportedOrientations {
    return [[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:[[UIApplication sharedApplication] keyWindow]];
}

+ (NSString *)getAppName {
    return [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundleIdentifier"];
}

+ (NSString *)getAppVersion {
    return [NSBundle.mainBundle.infoDictionary objectForKey:@"CFBundleShortVersionString"];
}

+ (BOOL)isAppDebuggable {
    return NO;
}

+ (void)setCurrentViewController:(UIViewController *)viewController {
    _currentViewController = viewController;
}

+ (UIViewController *)getCurrentViewController {
    return _currentViewController;
}

+ (void)setDelegate:(id<UnityAdsDelegate>)delegate; {
    _delegate = delegate;
}

+ (id<UnityAdsDelegate>)getDelegate {
    return _delegate;
}

@end
