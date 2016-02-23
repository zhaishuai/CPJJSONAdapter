//
//  CPJNetworkHandle.m
//  CPJJSONAdapter
//
//  Created by shuaizhai on 2/23/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import "CPJNetworkHandle.h"
#import "AFNetworking.h"
#import "CPJJSONAdapter.h"
#import "CPJModels.h"

@implementation CPJNetworkHandle





+ (void)getFaceModel:(void (^)(MSMFaceResult *result, NSDictionary *dic))complete{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"api_key"    :@"d88e499dfc2717d25264f0f726655346",
                                 @"api_secret" :@"KCO1VxSFkB09hdcqpH3w-CqwEOh1Lmay",
                                 @"url"        :@"http://www.huabian.com/uploadfile/2015/1124/20151124033032915.jpg",
                                 };

    
    [manager POST:@"http://apicn.faceplusplus.com/v2/detection/detect" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        MSMFaceResult *result = [[CPJJSONAdapter alloc] modelsOfClass:MSMFaceResult.class fromJSON:responseObject];
        
        complete(result, responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

    }];
}

@end
