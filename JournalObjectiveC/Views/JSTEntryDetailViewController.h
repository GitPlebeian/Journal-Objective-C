//
//  JSTEntryDetailViewController.h
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSTEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JSTEntryDetailViewController : UIViewController

#pragma mark - Outlets

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextTextView;

#pragma mark - Actions

- (IBAction)saveEntryButtonTapped:(UIButton *)sender;
- (IBAction)clearFieldsButtonTapped:(UIButton *)sender;

#pragma mark - Properties

@property (nonatomic) JSTEntry *entryLandingPad;

@end

NS_ASSUME_NONNULL_END
