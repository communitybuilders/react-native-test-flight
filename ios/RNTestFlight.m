#import "RNTestFlight.h"

@implementation RNTestFlight

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport
{
    NSURL *receiptURL = [[NSBundle mainBundle] appStoreReceiptURL];
    NSString *receiptURLString = [receiptURL path];
    BOOL isRunningTestFlightBeta =  ([receiptURLString rangeOfString:@"sandboxReceipt"].location != NSNotFound);

    return @{ @"isTestFlight" : @(isRunningTestFlightBeta) };
};

@end
