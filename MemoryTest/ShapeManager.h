//
//  ShapeManager.h
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface ShapeManager : NSObject
//{
//    Rectangle *rectangle;
//}

@property (nonatomic, retain) Rectangle *rectangle;
// nonatomic으로 사용 중 타 class에서도 사용 가능.
// ARC에서 string : retain
//        weak   : assign
//        weak의 경우 assign과 같으나, 외부에서 소멸된 Obj의 경우 nil로 바뀜.

- (void) setRectangle:(Rectangle *)rect;
- (void) drawShape;
@end
