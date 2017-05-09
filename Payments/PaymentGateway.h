

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void) processPaymentProtocol: (NSInteger) delegateInteger;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject
- (void) processPaymentAmount: (NSInteger) billAmount;
@property (nonatomic, weak) id <PaymentDelegate> delegate;
@end
