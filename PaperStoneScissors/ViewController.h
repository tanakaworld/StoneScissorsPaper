//
//  ViewController.h
//  PaperStoneScissors
//
//  Created by 田中 佑太郎 on 2013/10/09.
//  Copyright (c) 2013年 Yutaro Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UIButton *stoneButton;
    IBOutlet UIButton *scissorsButton;
    IBOutlet UIButton *paperButton;
    IBOutlet UIButton *retryButton;
    IBOutlet UILabel *messageLabel;
    IBOutlet UIImageView *enemyHandImage;
    
    
}

-(IBAction)btn_stone_down:(id)sender;
-(IBAction)btn_scissors_down:(id)sender;
-(IBAction)btn_paper_down:(id)sender;
-(IBAction)btn_retry_down:(id)sender;

@end
