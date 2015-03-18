//
//  ShowGreetingsVC.m
//  HelloWorld
//
//  Created by Diego Maye on 17/3/15.
//  Copyright (c) 2015 Diego Maye. All rights reserved.
//

#import "ShowGreetingsVC.h"

@interface ShowGreetingsVC ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;


@end

@implementation ShowGreetingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.greetingLabel.text = self.descripcion;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
