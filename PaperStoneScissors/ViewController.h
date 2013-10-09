//
//  ViewController.h
//  PaperStoneScissors
//
//  Created by 田中 佑太郎 on 2013/10/09.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UIButton *btn_stone;
    IBOutlet UIButton *btn_scissors;
    IBOutlet UIButton *btn_paper;
    IBOutlet UIButton *btn_retry;
    IBOutlet UILabel *lbl_msg;
    IBOutlet UILabel *lbl_result;
    IBOutlet UILabel *lbl_enemy;
}

-(IBAction)stone_btn_down:(id)sender;
-(IBAction)scissors_btn_down:(id)sender;
-(IBAction)paper_btn_down:(id)sender;
-(IBAction)retry_btn_down:(id)sender;

@end
