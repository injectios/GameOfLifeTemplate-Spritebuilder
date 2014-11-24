//
//  Creature.h
//  GameOfLife
//
//  Created by Dmitriy on 11/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

@property (nonatomic, assign, getter=isAlive) BOOL alive;
@property (nonatomic, assign) NSInteger aliveNaigbours;

- (id)initCreature;

@end
