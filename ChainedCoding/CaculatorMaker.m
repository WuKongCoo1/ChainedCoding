//
//  CaculatorMaker.m
//  ChainedCoding
//
//  Created by 吴珂 on 16/4/24.
//  Copyright © 2016年 MyCompany. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker
- (CaculatorMaker *(^)(int))add {
    
    return ^(int num) {
        self.result = self.result + num;
        return self;
    };
}

- (CaculatorMaker *(^)(int))sub {
    
    return ^(int num) {
        self.result = self.result - num;
        return self;
    };
}

- (CaculatorMaker *(^)(int))muilt {
    
    return ^(int num) {
        self.result = self.result * num;
        return self;
    };
}

- (CaculatorMaker *(^)(int))divide {
    
    return ^(int num) {
        self.result = self.result / num;
        return self;
    };
}
@end
