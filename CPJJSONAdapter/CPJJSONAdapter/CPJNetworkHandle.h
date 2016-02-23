//
//  CPJNetworkHandle.h
//  CPJJSONAdapter
//
//  Created by shuaizhai on 2/23/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MSMFaceResult;

@interface CPJNetworkHandle : NSObject

+ (void)getFaceModel:(void (^)(MSMFaceResult *result, NSDictionary *dic))complete;

@end
