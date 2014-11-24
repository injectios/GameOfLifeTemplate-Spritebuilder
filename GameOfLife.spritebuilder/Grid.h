//
//  Grid.h
//  GameOfLife
//
//  Created by Dmitriy on 11/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int totalAlive;
@property (nonatomic, assign) int generation;

@end
