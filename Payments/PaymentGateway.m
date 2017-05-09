

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount: (NSInteger) billAmount {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentProtocol:billAmount];
    }
}
@end
