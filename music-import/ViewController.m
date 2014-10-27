//
//  ViewController.m
//  music-import
//
//  Created by Mohammad Bharmal on 10/27/14.
//  Copyright (c) 2014 Mohammad Bharmal. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property(nonatomic,strong) NSArray *songColleciton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.songColleciton = [[MPMediaQuery songsQuery] items];
    self.myTableView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetWidth(self.view.frame));
    NSLog(@"Frame %@", NSStringFromCGRect(self.view.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger count = [self.songColleciton count];
    return count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"test"];
    }
    MPMediaItem *item = [self.songColleciton objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    cell.detailTextLabel.text = item.artist;
    return cell;
}
@end
