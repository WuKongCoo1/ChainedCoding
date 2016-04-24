//
//  NSObject+Caculator.m
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "NSObject+Caculator.h"

#import "CaculatorMaker.h"
@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *maker))block
{
    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    
    block(maker);
    
    return maker.result;
}

@end
