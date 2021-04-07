#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>

@interface ReactNativeDeviceClose : NSObject <RCTBridgeModule>

{
    NSMutableArray <RCTResponseSenderBlock> *callbackArray;
}

@end
