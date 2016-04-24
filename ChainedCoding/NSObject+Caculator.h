//
//  NSObject+Caculator.h
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;

@interface NSObject (Caculator)

+ (int)makeCaculators:(void (^)(CaculatorMaker *maker))caculatorMaker;

@end
