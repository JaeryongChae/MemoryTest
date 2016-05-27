//
//  Rectangle.h
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Rectangle : Shape
{
    int width, height;
}

- (void) setWidth:(int)width
       withHeight:(int)height;
- (void) draw;
@end
