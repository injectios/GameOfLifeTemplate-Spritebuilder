//
//  Creature.m
//  GameOfLife
//
//  Created by Dmitriy on 11/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (id)initCreature {
    return [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
}

- (void)setAlive:(BOOL)alive {
    _alive = alive;
    self.visible = _alive;
}

@end
