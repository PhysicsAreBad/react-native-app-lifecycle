#import "RNReactNativeDeviceClose.h"

#import <NotificationCenter/NotificationCenter.h>

static NSMutableArray *arr;

@implementation RNReactNativeDeviceClose

- (instancetype)init
{
    self = [super init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillTerminate) name:UIApplicationWillTerminateNotification object:nil];
    
    arr = NSMutableArray.alloc;
    
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}


-(void)appWillTerminate
{
    for(RCTResponseSenderBlock callback in arr) {
        callback(@[]);
    }
}

-(void)onClose: (RCTResponseSenderBlock) block
{
    [arr addObject:(block)];
}

RCT_EXPORT_MODULE(ReactNativeDeviceClose)

@end
  
