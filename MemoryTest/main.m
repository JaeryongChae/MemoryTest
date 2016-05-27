//
//  main.m
//  MemoryTest
//
//  Created by MF839-008 on 2016. 5. 27..
//  Copyright © 2016년 JRChae. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Shape.h"
#import "Rectangle.h"
#import "ShapeManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Rectangle *rect = [[Rectangle alloc] init];  // Retain Count = 1
//        Rectangle *rect2 = [rect retain]; // Retain Count = 2;
//        
//        [rect draw];
//        [rect release];  // Retain Count = 1
//        [rect2 draw];
//        [rect2 release]; // Retain Count = 0
        
        ShapeManager *shapeManager = [[ShapeManager alloc] init];  // SM_RC 1
        Rectangle *rectangle = [[Rectangle alloc] init];           // R_RC 1
        
        [shapeManager setRectangle:rectangle];  // SM_RC 1, R_RC 2 (setRectangle에서 retain)
        [rectangle release]; // R_RC 1
        
        [shapeManager drawShape];
        
        Rectangle *rectangle2 = [[Rectangle alloc] init];           // R2_RC 1
        
        [shapeManager setRectangle:rectangle2];  // SM_RC 1, R_RC 0, R2_RC 2 (setRectangle에서 retain)
        [rectangle2 release]; // R2_RC 1
        
        [shapeManager drawShape];
        [shapeManager release]; // SM_RC 0, R2_RC 1 (이후 dealloc되면서 release하여 0 으로 만듬)
    }
    return 0;
}
