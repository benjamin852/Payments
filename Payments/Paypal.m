
#import "Paypal.h"

@implementation Paypal
- (void) processPaymentProtocol: (NSInteger) delegateInteger {
    NSLog(@"Thanks for picking Paypal your payment is %ld",delegateInteger);
}
- (BOOL) canProcessPayment {
    int i =arc4random_uniform(3);
    if (i ==1) {
        NSLog(@"Sorry we cannot process your payment");
        return NO;
    } else {
        return YES;
    }
}
@end
