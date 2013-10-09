//
//  ViewController.m
//  PaperStoneScissors
//
//  Created by 田中 佑太郎 on 2013/10/09.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)stone_btn_down:(id)sender{
    lbl_msg.text = @"Rock, paper, scissors!";
    btn_scissors.hidden = YES;
    btn_paper.hidden = YES;
    btn_stone.hidden = NO;
}
-(IBAction)scissors_btn_down:(id)sender{
    
}
-(IBAction)paper_btn_down:(id)sender{
    
}
-(IBAction)retry_btn_down:(id)sender{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
