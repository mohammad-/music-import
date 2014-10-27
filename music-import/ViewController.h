//
//  ViewController.h
//  music-import
//
//  Created by Mohammad Bharmal on 10/27/14.
//  Copyright (c) 2014 Mohammad Bharmal. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MediaPlayer;
@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,strong) IBOutlet UITableView *myTableView;

@end

