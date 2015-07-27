//
//  secondViewController.h
//  tableViewTask
//
//  Created by OBS_Macmini on 7/25/15.
//  Copyright (c) 2015 OptisolBusinessSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface secondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textdata;

@property (nonatomic,strong) NSString *temp;
@property (nonatomic,strong) NSArray *arrayvalue;
@property (nonatomic,assign) NSInteger value;
- (IBAction)plusPress:(id)sender;
- (IBAction)minusPress:(id)sender;

@end
