//
//  JSTEntriesTableViewController.m
//  JournalObjectiveC
//
//  Created by Jackson Tubbs on 8/19/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

#import "JSTEntriesTableViewController.h"
#import "JSTEntryController.h"
#import "JSTEntryDetailViewController.h"

@interface JSTEntriesTableViewController ()

@end

@implementation JSTEntriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return JSTEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    JSTEntry *entry = JSTEntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"MM-dd-yyyy";
    
    cell.detailTextLabel.text = [formatter stringFromDate:entry.timeStamp];
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        JSTEntry *entryToDelete = JSTEntryController.shared.entries[indexPath.row];
        [JSTEntryController.shared removeEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showEntryDetail"]) {
        NSIndexPath *index = self.tableView.indexPathForSelectedRow;
        JSTEntryDetailViewController *destinationVC = segue.destinationViewController;
        JSTEntry *entry = JSTEntryController.shared.entries[index.row];
        destinationVC.entryLandingPad = entry;
    }
}

@end
