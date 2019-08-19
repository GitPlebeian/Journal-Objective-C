//
//  JSTEntry.m
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import "JSTEntry.h"

@implementation JSTEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        _title = [title copy];
        _bodyTest = [_bodyTest copy];
        _timeStamp = [[NSDate alloc] init];
    }
    return self;
}

@end
