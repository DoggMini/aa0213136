//
//  ViewController.m
//  aa0213136
//
//  Created by csievnujewntcu on 2015/6/29.
//  Copyright (c) 2015年 csievnujewntcu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSData *date =[NSDate date];
    NSDateFormatter *dateFormatter =[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"'Day:' Y/MM/dd "];
    [self.Lb1 setText:[dateFormatter stringFromDate:date]];
    [dateFormatter setDateFormat:@"'Time:' hh:mm' 'a"];
    [self.Lb2 setText:[dateFormatter stringFromDate:date]];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)se:(id)sender {
    UIDatePicker *dPicker =sender;
    NSDateFormatter *dF =[[NSDateFormatter alloc] init];
    NSDateFormatter *dF2 =[[NSDateFormatter alloc] init];
    [dF setDateFormat:@"'Day:' Y/MM/dd "];
    [dF2 setDateFormat:@"'Time:' hh:mm' 'a"];
    NSString *dString =[dF stringFromDate:[dPicker date]];
    NSString *dString2 =[dF2 stringFromDate:[dPicker date]];
    
    [self.Lb1 setText:dString];
    [self.Lb2 setText:dString2];
    
    
    
}
@end
