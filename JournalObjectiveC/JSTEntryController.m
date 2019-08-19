//
//  JSTEntryController.m
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import "JSTEntryController.h"

@implementation JSTEntryController

+ (JSTEntryController *) shared {
    static JSTEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JSTEntryController new];
    });
//    shared.entries = [NSMutableArray new];
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [self loadEntries];
    }
    return self;
}


- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    JSTEntry *newEntry = [[JSTEntry alloc] initWithTitle:title bodyText:bodyText];

    [self.entries addObject:newEntry];
}

- (void)removeEntry:(JSTEntry *)entry {
    [_entries removeObject:entry];
    
}

- (void)updateEntry:(JSTEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText {
    entry.title = title;
    entry.bodyTest = bodyText;
}

- (NSMutableArray *) loadEntries {
    NSMutableArray *loadedEntries = [[NSMutableArray alloc] init];
    return loadedEntries;
}

@end
