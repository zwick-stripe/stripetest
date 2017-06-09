//
//  ViewController.m
//  stripetest
//
//  Created by Zach Wick on 2017-06-09.
//  Copyright © 2017 zach wick. All rights reserved.
//

#import "ViewController.h"
#import <Stripe/STPCardValidator.h>
#import <Stripe/STPCardValidationState.h>
#import <Stripe/STPCardBrand.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *resultString = [[NSString alloc] initWithFormat:@"4012 8888 88881"];
    STPCardValidationState state = [STPCardValidator validationStateForNumber:resultString validatingCardBrand:YES];
    STPCardBrand brand = [STPCardValidator brandForNumber:resultString];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
