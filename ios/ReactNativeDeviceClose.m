#import "ReactNativeDeviceClose.h"

#import <NotificationCenter/NotificationCenter.h>

@implementation ReactNativeDeviceClose

- (instancetype)init
{
    self = [super init];
    
    callbackArray = [NSMutableArray new];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillTerminate) name:UIApplicationWillTerminateNotification object:nil];
    
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

-(void)appWillTerminate
{
    
    for(RCTResponseSenderBlock callback in callbackArray) {
        callback(@[]);
    }
}

-(void)onClose: (RCTResponseSenderBlock) block
{
    [callbackArray addObject:(block)];
}

RCT_EXPORT_MODULE(ReactNativeDeviceClose)

@end
  
