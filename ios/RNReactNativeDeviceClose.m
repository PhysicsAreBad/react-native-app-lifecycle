#import "RNReactNativeDeviceClose.h"

#import <NotificationCenter/NotificationCenter.h>

@implementation RNReactNativeDeviceClose

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

-(void)addAppTerminationNotifier
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillTerminate) name:UIApplicationWillTerminateNotification object:nil];
}

-(void)appWillTerminate
{
    //..... task to done before termination
}

RCT_EXPORT_MODULE()

@end
  
