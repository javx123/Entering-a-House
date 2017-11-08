//
//  ViewController.m
//  EnteringAHouse
//
//  Created by Javier Xing on 2017-11-08.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIBarButtonItem * homeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.homeButton = [[UIBarButtonItem alloc]initWithTitle:@"Go Home" style:UIBarButtonItemStylePlain target:self action:@selector(goHome)];
    self.navigationItem.rightBarButtonItem = self.homeButton;


}
-(void)goHome{
    UIViewController *home = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    [self.navigationController pushViewController:home animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
