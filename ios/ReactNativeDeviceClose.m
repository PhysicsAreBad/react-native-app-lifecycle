#import "ReactNativeDeviceClose.h"

#import <NotificationCenter/NotificationCenter.h>

#import <React/RCTLog.h>

@implementation ReactNativeDeviceClose

- (instancetype)init
{
    self = [super init];
    
    callbackArray = [NSMutableArray new];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillTerminate) name:UIApplicationWillResignActiveNotification object:nil];
    
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

- (void)appWillTerminate
{
    for(RCTResponseSenderBlock callback in callbackArray) {
        callback(@[]);
    }
    
    [callbackArray removeAllObjects];
}

RCT_EXPORT_METHOD(onClose: (RCTResponseSenderBlock) callback)
{
    [callbackArray addObject:(callback)];
}

RCT_EXPORT_MODULE()

@end
