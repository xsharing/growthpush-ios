//
//  GrowthPushTests.m
//  GrowthPushSample
//
//  Created by Kataoka Naoyuki on 2014/04/22.
//  Copyright (c) 2014年 SIROK, Inc. All rights reserved.
//

#import "GrowthPushTests.h"

@implementation GrowthPushTests

+ (void) setUp {

    [super setUp];

}

+ (void) tearDown {
    [super tearDown];
}

- (void) setUp {

    [super setUp];

    [[self class] waitOperation];

}

- (void) tearDown {

    [super tearDown];

}

- (void) testRegisterWithDevelopment {

    [[self class] initialize];

    [EasyGrowthPush setApplicationId:kApplicationId secret:kApplicationSecret environment:GPEnvironmentDevelopment debug:YES];
    [[self class] waitClient];
    
    XCTAssertEqual(GPEnvironmentDevelopment, [[[GrowthPush sharedInstance] client] environment]);

}

- (void) testRegisterWithProduction {

    [[self class] initialize];

    [EasyGrowthPush setApplicationId:kApplicationId secret:kApplicationSecret environment:GPEnvironmentProduction debug:YES];
    [[self class] waitClient];
    
    XCTAssertEqual(GPEnvironmentProduction, [[[GrowthPush sharedInstance] client] environment]);

}

@end
