//
//  ObjectiveCClass.h
//  ObjectiveCSwiftBrifging
//
//  Created by Roshan Sequeira on 06/05/16.
//  Copyright © 2016 Saltmines Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectiveCClass : NSObject

- (void)objectiveCfunction;
- (NSString *)objectiveCFunctionWithReturnValue;
- (void)objectiveCfunctionWithValuePassedFromSwiftClass:(NSString *)passedValue;
- (void)callASwiftFunction;


@end
