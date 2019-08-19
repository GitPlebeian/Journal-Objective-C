//
//  JSTEntryController.h
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSTEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JSTEntryController : NSObject

+ (JSTEntryController *) shared;
@property (nonatomic, strong) NSMutableArray *entries;

# pragma Crud

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)removeEntry:(JSTEntry *)entry;
- (void)updateEntry:(JSTEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
