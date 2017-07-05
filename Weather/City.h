//
//  City.h
//  Weather
//
//  Created by Endeavour2 on 7/5/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface City : NSObject
@property (nonatomic) NSString *cityName;
@property (nonatomic) UIImage *cityImage;
@property (nonatomic) NSInteger currentTemp;
@property (nonatomic) NSDate *currentTime;
@property (nonatomic) NSString *cloudy;
@property (nonatomic) NSString *sunny;
@property (nonatomic) NSString *windy;


@end
