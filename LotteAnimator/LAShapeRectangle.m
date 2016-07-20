//
//  LAShapeRectangle.m
//  LotteAnimator
//
//  Created by Brandon Withrow on 12/15/15.
//  Copyright © 2015 Brandon Withrow. All rights reserved.
//

#import "LAShapeRectangle.h"

@implementation LAShapeRectangle

- (instancetype)initWithJSON:(NSDictionary *)jsonDictionary frameRate:(NSNumber *)frameRate {
  self = [super init];
  if (self) {
    [self _mapFromJSON:jsonDictionary frameRate:frameRate];
  }
  return self;
}

- (void)_mapFromJSON:(NSDictionary *)jsonDictionary frameRate:(NSNumber *)frameRate {
  NSDictionary *position = jsonDictionary[@"p"];
  if (position) {
    _position = [[LAAnimatablePointValue alloc] initWithPointValues:position frameRate:frameRate];
    _position.usePathAnimation = NO;
  }
  
  NSDictionary *cornerRadius = jsonDictionary[@"r"];
  if (cornerRadius) {
    _cornerRadius = [[LAAnimatableNumberValue alloc] initWithNumberValues:cornerRadius frameRate:frameRate];
  }
  
  NSDictionary *bounds = jsonDictionary[@"s"];
  if (bounds) {
    _bounds = [[LAAnimatableBoundsValue alloc] initWithSizeValues:bounds frameRate:frameRate];
  }
}

@end
