//
//  ObjectiveCClass.m
//  ObjectiveCSwiftBrifging
//
//  Created by Roshan Sequeira on 06/05/16.
//  Copyright © 2016 Saltmines Technologies. All rights reserved.
//

#import "ObjectiveCClass.h"
#import "ObjectiveCSwiftBridging-Swift.h"

@implementation ObjectiveCClass

- (void)objectiveCfunction
{
    NSLog(@"Calling %s",__func__);
}

- (NSString *)objectiveCFunctionWithReturnValue
{
    return @"Returning value from Objective C Class objectiveCFunctionWithReturnValue function";
}

- (void)objectiveCfunctionWithValuePassedFromSwiftClass:(NSString *)passedValue
{
    NSLog(@"%@ and printed in objective c class %s",passedValue,__func__);
}

- (void)callASwiftFunction
{
    ViewController *swiftViewcontroller = [[ViewController alloc] init];
    [swiftViewcontroller functionFromObjectiveC];
}
@end
