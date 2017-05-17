//
//  ViewController.m
//  simpleCalculator
//
//  Created by Apple on 26.12.16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = false;
    firstEntry = NULL;
    secondEntry = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
}

- (IBAction)minusPressed:(id)sender {
}

- (IBAction)addPressed:(id)sender {
}

- (IBAction)equalPressed:(id)sender {
}

- (IBAction)numberPressed:(UIButton*)sender {
    NSInteger tagx = sender.tag;
    if (operatorPressed == false) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat: @"%li", tagx];
            _labelOutput.text = firstEntry;
        }
        else {
            firstEntry = [NSString stringWithFormat: @"%@%li", firstEntry, tagx];
            _labelOutput.text = firstEntry;
        }
    }
    
    else {
        if (secondEntry == NULL) {
            secondEntry = [NSString stringWithFormat: @"%li", tagx];
            _labelOutput.text = secondEntry;
        }
        else {
            secondEntry = [NSString stringWithFormat:@"%@%li", secondEntry, tagx];
            _labelOutput.text = secondEntry;
        }
    }
}

@end
