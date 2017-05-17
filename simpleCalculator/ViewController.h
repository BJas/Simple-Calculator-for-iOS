//
//  ViewController.h
//  simpleCalculator
//
//  Created by Apple on 26.12.16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    char op;
    NSString *firstEntry;
    NSString *secondEntry;
    
}

@property (weak, nonatomic) IBOutlet UILabel *labelOutput;
- (IBAction)clearPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)equalPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;

@end

