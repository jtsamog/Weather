//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"
@import UIKit;

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    //initialize city names
    City *vancouver = [[City alloc]init];
    vancouver.cityName = @"Vancouver";
    City *toronto = [[City alloc]init];
    toronto.cityName = @"Toronto";
    City *montreal = [[City alloc]init];
    montreal.cityName = @"Montreal";
    City *chicago = [[City alloc]init];
    chicago.cityName = @"Chicago";
    City *tokyo = [[City alloc]init];
    tokyo.cityName = @"Tokyo";
    
    
// initialize tab bar controllers
    
    UITabBarController *cityTabBarController = [[UITabBarController alloc]init];
    
    self.window.rootViewController = cityTabBarController; // set as rootviewcontroller

    // initialize five CityViewController instances, one for each city and add bgColor then set to the Nav controller;
    //Vancouver
    CityViewController *cityVancouver = [CityViewController new];
    cityVancouver.city = vancouver;
    cityVancouver.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Vancouver.png"]];
    UINavigationController *navControllerVancouver = [[UINavigationController alloc]initWithRootViewController:cityVancouver];
    navControllerVancouver.tabBarItem.image = [UIImage imageNamed:@"default.png"];
    
    //Toronto
    CityViewController *cityToronto = [CityViewController new];
    cityToronto.city = toronto;
    cityToronto.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Toronto.png"]];
    UINavigationController *navControllerToronto = [[UINavigationController alloc]initWithRootViewController:cityToronto];
    navControllerToronto.tabBarItem.image = [UIImage imageNamed:@"default.png"];
    
    //Montreal
    CityViewController *cityMontreal = [CityViewController new];
    cityMontreal.city = montreal;
    cityMontreal.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Montreal.png"]];
    UINavigationController *navControllerMontreal = [[UINavigationController alloc]initWithRootViewController:cityMontreal];
    navControllerMontreal.tabBarItem.image = [UIImage imageNamed:@"default.png"];

    //Chicago
    CityViewController *cityChicago = [CityViewController new];
    cityChicago.city = chicago;
    cityChicago.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Chicago.png"]];
    UINavigationController *navControllerChicago = [[UINavigationController alloc]initWithRootViewController:cityChicago];
    navControllerChicago.tabBarItem.image = [UIImage imageNamed:@"default.png"];

    //Tokyo
    CityViewController *cityTokyo = [CityViewController new];
    cityTokyo.city = tokyo;
    cityTokyo.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"LA.png"]];
    UINavigationController *navControllerTokyo = [[UINavigationController alloc]initWithRootViewController:cityTokyo];
    navControllerTokyo.tabBarItem.image = [UIImage imageNamed:@"default.png"];

    
    //add each city's navigation controller to your tab view controller
    cityTabBarController.viewControllers = @[navControllerVancouver,navControllerToronto, navControllerMontreal,navControllerChicago,navControllerTokyo ];


 
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
