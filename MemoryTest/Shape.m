//
//  Shape.m
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import "Shape.h"

@implementation Shape
- (id) init
{
    self = [super init];
    if(self)
    {
        x = y = 0;
    }
    return self;
}

- (void) setX:(int)newX
        withY:(int)newY
{
    x = newX;
    y = newY;
}

- (void) draw
{
    NSLog(@"Draw shape.");
}

- (void) dealloc // 직접 호출되지 않으나 객체 삭제시 호출됨.
{
    [super dealloc];
}
@end
