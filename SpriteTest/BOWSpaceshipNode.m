//
//  BOWSpaceshipNode.m
//  SpriteTest
//
//  Created by Matthias Wenz on 02.12.13.
//  Copyright (c) 2013 Bowstreet GmbH. All rights reserved.
//

#import "BOWSpaceshipNode.h"

@implementation BOWSpaceshipNode

- (id)init {
    self = [super initWithImageNamed:@"Spaceship.png"];
    if (self) {
        
        NSString *fireEmitterPath = [[NSBundle mainBundle] pathForResource:@"Fire" ofType:@"sks"];
        SKEmitterNode *fireEmitter = [NSKeyedUnarchiver unarchiveObjectWithFile:fireEmitterPath];
        fireEmitter.position = CGPointMake(0, -(self.size.height/2));
        [self addChild:fireEmitter];
        
    }
    return self;
}

@end
