//
//  Rectangle.m
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
- (id) init
{
    self = [super init];
    if(self)
    {
        width = height = 0;
    }
    return self;
}

- (void) setWidth:(int)newWidth
       withHeight:(int)newHeight
{
    width = newWidth;
    height = newHeight;
}

- (void) draw
{
    NSLog(@"Draw Rectangle");
}

- (void) dealloc // 직접 호출되지 않으나 객체 삭제시 호출됨.
{
    [super dealloc];
}
@end
