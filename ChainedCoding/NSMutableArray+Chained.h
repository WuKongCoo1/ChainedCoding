//
//  NSMutableArray+Chained.h
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Chained)

- (NSMutableArray * (^)(id object))addChainedObject;
- (NSMutableArray *(^)(void))deleteChainedObject;

@end
