//
//  ShapeManager.m
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import "ShapeManager.h"

@implementation ShapeManager

//@synthesize rectangle;  -> _rectangle로 사용할 수 있음.

- (id) init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

//- (void) setRectangle:(Rectangle *)rect
//{
//    if(rectangle)
//        [rectangle release];
//    
//    rectangle = [rect retain];  // RC 증가 시킴
//}  --> @interface에서 @property로 하는 경우 (retain)으로 대체 가능
// @property에서 (assign)으로 하는 경우는 재할당시 release되지 않음.

- (void) drawShape
{
    [_rectangle draw];
}

- (void) dealloc
{
    if(_rectangle) [_rectangle release]; // RC 감소를 통해 rectangle의 RC를 0으로.
    [super dealloc];
}
@end
