//
//  main.m
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaculatorMaker.h"
#import "NSMutableArray+Chained.h"
#import "NSObject+Caculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSMutableArray *arr = [NSMutableArray array];
        arr.addChainedObject(@1).addChainedObject(@2);
        
        arr.deleteChainedObject().deleteChainedObject().deleteChainedObject();
        
        
        int result = [NSObject makeCaculators:^(CaculatorMaker *maker) {
            maker.add(1).add(2);
        }];
        
        NSLog(@"%i", result);
    }
    return 0;
}
