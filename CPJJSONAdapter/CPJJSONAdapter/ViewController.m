//
//  ViewController.m
//  CPJJSONAdapter
//
//  Created by shuaizhai on 2/23/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import "ViewController.h"
#import "CPJNetworkHandle.h"
#import "CPJJSONAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CPJNetworkHandle getFaceModel:^(MSMFaceResult *result, NSDictionary *dic) {
        [[CPJJSONAdapter new] getValueWithPath:@"face.0.face_id" fromJSON:dic];
    }];
    
}

- (void)check:(NSObject *)objt withValue:(NSObject *)objt2 withRealValue:(NSObject *)objt3{
    if(!([objt isEqual:objt2] && [objt2 isEqual:objt3])){
        NSAssert(true, @"解析错误");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
