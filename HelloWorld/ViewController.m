//
//  ViewController.m
//  HelloWorld
//
//  Created by Diego Maye on 17/3/15.
//  Copyright (c) 2015 Diego Maye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *text;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sayHello:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test message" message:@"Hello World" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}

@end
