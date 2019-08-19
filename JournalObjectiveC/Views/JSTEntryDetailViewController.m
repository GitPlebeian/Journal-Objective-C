//
//  JSTEntryDetailViewController.m
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import "JSTEntryDetailViewController.h"
#import "JSTEntryController.h"

@interface JSTEntryDetailViewController ()

@end

@implementation JSTEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

// Will be called when the entry landing pad is set
- (void)setEntryLandingPad:(JSTEntry *)entryLandingPad {
    
    _entryLandingPad = entryLandingPad;
    
    [self updateViewWithEntry:entryLandingPad];
}

- (void)updateViewWithEntry:(JSTEntry *)entry {
    if (self) {
        [self loadViewIfNeeded];
        self.entryTitleTextField.text = entry.title;
        self.entryBodyTextTextView.text = entry.bodyTest;
    }
}

- (IBAction)saveEntryButtonTapped:(UIButton *)sender {
    
    if (_entryLandingPad) {
        [JSTEntryController.shared updateEntry:_entryLandingPad title:_entryTitleTextField.text bodyText:_entryBodyTextTextView.text];
    } else {
        NSString *entryTitle = _entryTitleTextField.text;
        NSString *entryBodyText = _entryBodyTextTextView.text;
        
        [JSTEntryController.shared addEntryWithTitle:entryTitle bodyText:entryBodyText];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearFieldsButtonTapped:(UIButton *)sender {
}
@end
