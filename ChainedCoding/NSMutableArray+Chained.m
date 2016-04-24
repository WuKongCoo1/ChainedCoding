//
//  NSMutableArray+Chained.m
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "NSMutableArray+Chained.h"

typedef NSMutableArray * (^Name)(void);

@implementation NSMutableArray (Chained)

- (NSMutableArray * (^)(id object))addChainedObject;
{
    return ^(id object){
        [self addObject:object];
        return self;
    };
}

- (NSMutableArray *(^)(void))deleteChainedObject
{
    return ^(void){
        if (self.count != 0) {
            [self removeLastObject];
        }
        return self;
    };
}

@end
