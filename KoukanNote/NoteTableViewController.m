//
//  NoteTableViewController.m
//  KoukanNote
//
//  Created by 井上ユカリ on 2014/06/07.
//  Copyright (c) 2014年 YukariInoue. All rights reserved.
//

#import "NoteTableViewController.h"
#import "IchiranTableViewController.h"

@interface NoteTableViewController ()

@end

@implementation NoteTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    table.delegate=self;
    table.dataSource=self;
    
    namaeArray=[[NSMutableArray alloc] initWithObjects:
                @"２−１ノート",@"yukarinnote", nil];



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //セクションの数
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //行の数
    return [namaeArray count];
}





#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *string = namaeArray[indexPath.row];
        
        IchiranTableViewController *ichiranVC = [segue destinationViewController];
        ichiranVC.noteName = string;
    //＝の意味は右辺に左辺を代入する
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier=@"Cell";
    UITableViewCell *cell=[tableView
                           dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:
              UITableViewCellStyleDefault reuseIdentifier:
              cellIdentifier];
    }
    
    cell.textLabel.text=[namaeArray objectAtIndex:indexPath.row];

    return cell;
}







@end
