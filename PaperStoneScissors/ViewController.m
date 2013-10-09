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

UIImage *stoneImage;
UIImage *scissorsImage;
UIImage *paperImage;

-(IBAction)btn_stone_down:(id)sender {
    messageLabel.text = @"じゃんけん ...";
    scissorsButton.hidden = YES;
    paperButton.hidden = YES;
    stoneButton.hidden = NO;
    
    // 勝敗判定
    NSInteger result = arc4random() % 3; //0-2のランダム
    
    switch (result) {
        case 0:
            enemyHandImage.image = stoneImage;
            messageLabel.text = @"あいこで";
            scissorsButton.hidden = NO;
            paperButton.hidden = NO;
            retryButton.hidden = YES;
            break;
        case 1:
            enemyHandImage.image = scissorsImage;
            messageLabel.text = @"あなたの勝ち！";
            stoneButton.enabled = NO;
            retryButton.hidden = NO;
            break;
        case 2:
            enemyHandImage.image = paperImage;
            messageLabel.text = @"あなたの負け　。。。";
            stoneButton.enabled = NO;
            retryButton.hidden = NO;
            break;
    }
    
}
-(IBAction)btn_scissors_down:(id)sender{
    messageLabel.text = @"じゃんけん ...";
    scissorsButton.hidden = NO;
    paperButton.hidden = YES;
    stoneButton.hidden = YES;
    
    // 勝敗判定
    NSInteger result = arc4random() % 3; //0-2のランダム
    
    switch (result) {
        case 0:
            enemyHandImage.image =  scissorsImage;
            messageLabel.text = @"あいこで";
            paperButton.hidden = NO;
            stoneButton.hidden = NO;
            retryButton.hidden = YES;
            break;
        case 1:
            enemyHandImage.image =  paperImage;
            messageLabel.text = @"あなたの勝ち！";
            scissorsButton.enabled = NO;
            retryButton.hidden = NO;
            break;
        case 2:
            enemyHandImage.image =  stoneImage;
            messageLabel.text = @"あなたの負け　。。。";
            scissorsButton.enabled = NO;
            retryButton.hidden = NO;
            break;
    }
}
-(IBAction)btn_paper_down:(id)sender{
    messageLabel.text = @"じゃんけん ...";
    scissorsButton.hidden = YES;
    paperButton.hidden = NO;
    stoneButton.hidden = YES;
    
    // 勝敗判定
    NSInteger result = arc4random() % 3; //0-2のランダム
    
    switch (result) {
        case 0:
            enemyHandImage.image =  paperImage;
            messageLabel.text = @"あいこで";
            scissorsButton.hidden = NO;
            stoneButton.hidden = NO;
            retryButton.hidden = YES;
            break;
        case 1:
            enemyHandImage.image =  stoneImage;
            messageLabel.text = @"あなたの勝ち！";
            paperButton.enabled = NO;
            retryButton.hidden = NO;
            break;
        case 2:
            enemyHandImage.image =  scissorsImage;
            messageLabel.text = @"あなたの負け　。。。";
            paperButton.enabled = NO;
            retryButton.hidden = NO;
            break;
    }
}
-(IBAction)btn_retry_down:(id)sender{
    stoneButton.hidden = NO;
    scissorsButton.hidden = NO;
    paperButton.hidden = NO;
    retryButton.hidden = NO;
    messageLabel.text = @"ゲーム開始！　じゃんけん ...";
    [enemyHandImage setImage:nil];
    retryButton.hidden = YES;
    
    stoneButton.enabled = YES;
    scissorsButton.enabled = YES;
    paperButton.enabled = YES;
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    messageLabel.text = @"ゲーム開始！　じゃんけん ...";
    
    retryButton.hidden = YES;
    
    
    // imageWithContentsOfFile : キャッシュを溜め込まない -> 大量の画像の際に
    // stoneImage = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"stone" ofType:@"png"]];
    
    // imageNamed : 画像読み込み高速
    stoneImage = [UIImage imageNamed:@"stone.png"];
    scissorsImage = [UIImage imageNamed:@"scissors.png"];
    paperImage = [UIImage imageNamed:@"paper.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
