//
//  Shape.h
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
{
    int x, y;
}

- (void) setX:(int)x
        withY:(int)y;
- (void) draw;
@end
