//
//  CityViewController.m
//  Weather
//
//  Created by Endeavour2 on 7/5/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController


- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        
    }return self;
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }return self;
}





-(void)showWeatherDetails{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = [self.city.cityName uppercaseString];

    
    
    //add button to right side of bar
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"More" style:UIBarButtonItemStylePlain target:self action:@selector(buttonTapped)];
    
}


-(void)buttonTapped{
    
    DetailedViewController *dVC = [DetailedViewController new];
    dVC.title = [NSString stringWithFormat:@"Detail %@", [self.title capitalizedString]];
    dVC.view.backgroundColor = self.view.backgroundColor;
    
    [self.navigationController pushViewController:dVC animated:YES];
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
