

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "Amazon.h"
#import "Paypal.h"
#import "Stripe.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        while (true ) {
            NSInteger randomNumber = arc4random_uniform(900) +100;
            NSLog (@"Thank you for shopping at Acme.com Your total today is %ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomNumber);
            
            
            NSString *inputString = [InputCollector userInput];
            NSInteger inputStringInteger = inputString.integerValue;
            PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
            
            Amazon * amazon = [[Amazon alloc] init];
            Paypal * paypal = [[Paypal alloc] init];
            Stripe * stripe = [[Stripe alloc] init];
            
            switch (inputStringInteger) {
                case 1:
                    paymentGateway.delegate = amazon;
                    break;
                case 2:
                    paymentGateway.delegate = paypal;
                    break;
                case 3:
                    paymentGateway.delegate = stripe;
                    break;
                default:
                    break;
            }
            
            [paymentGateway processPaymentAmount:randomNumber];
        }
    }
    return 0;
}
