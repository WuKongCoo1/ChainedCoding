//
//  CaculatorMaker.h
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property (assign, nonatomic) int result;

- (CaculatorMaker *(^)(int))add;

- (CaculatorMaker *(^)(int))sub;

- (CaculatorMaker *(^)(int))muilt;

- (CaculatorMaker *(^)(int))divide;

@end
