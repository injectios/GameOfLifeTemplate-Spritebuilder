//
//  Grid.m
//  GameOfLife
//
//  Created by Dmitriy on 11/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}

- (void)onEnter
{
    [super onEnter];
    
    [self setupGrid];
    
    // accept touches on the grid
    self.userInteractionEnabled = YES;
}

- (void)setupGrid {
    _cellHeight = self.contentSize.height / GRID_ROWS;
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    
    float x = 0;
    float y = 0;
    
    _gridArray = [NSMutableArray array];
    
    for (int i = 0; i < GRID_ROWS; i++) {
        _gridArray[i] = [NSMutableArray array];
        
        x = 0;
        
        for (int j = 0; j < GRID_COLUMNS; j++) {
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0, 0);
            creature.position = ccp(x, y);
            creature.alive = YES;
            [self addChild:creature];
            _gridArray[i][j] = creature;
            x+= _cellWidth;
        }
        y+= _cellHeight;
    }
}

@end
