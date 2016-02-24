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
#import "CPJModels.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [CPJNetworkHandle getFaceModel:^(MSMFaceResult *result, NSDictionary *dic) {

        [self check:[[[result.face[0] atrribute] age] range]
          withValue:[[CPJJSONAdapter new]
    getValueWithPath:@"face.0.attribute.age.range" fromJSON:dic]
    withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"age"] objectForKey:@"range"]];
        
        [self check:[[[result.face[0] atrribute] age] value]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.attribute.age.value" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"age"] objectForKey:@"value"]];
        
        [self check:[[[result.face[0] atrribute] gender] confidence]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.attribute.gender.confidence" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"gender"] objectForKey:@"confidence"]];
        
        [self check:[[[result.face[0] atrribute] gender] value]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.attribute.gender.value" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"gender"] objectForKey:@"value"]];
        
        [self check:[[[result.face[0] atrribute] smiling] value]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.attribute.smiling.value" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"attribute"] objectForKey:@"smiling"] objectForKey:@"value"]];
        
        [self check:[result.face[0] faceId]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.face_id" fromJSON:dic]
      withRealValue:[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"face_id"]];
        
        [self check:[[[result.face[0] iposition] center] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.center.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"center"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] center] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.center.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"center"] objectForKey:@"y"]];
        
        [self check:[[[result.face[0] iposition] eyeLeft] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.eye_left.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"eye_left"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] eyeLeft] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.eye_left.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"eye_left"] objectForKey:@"y"]];
        
        [self check:[[[result.face[0] iposition] eyeRight] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.eye_right.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"eye_right"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] eyeRight] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.eye_right.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"eye_right"] objectForKey:@"y"]];
        
        [self check:[[result.face[0] iposition] height]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.height" fromJSON:dic]
      withRealValue:[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"height"]];
        
        [self check:[[[result.face[0] iposition] mouthLeft] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.mouth_left.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"mouth_left"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] mouthLeft] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.mouth_left.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"mouth_left"] objectForKey:@"y"]];
        
        [self check:[[[result.face[0] iposition] mouthRight] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.mouth_right.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"mouth_right"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] mouthRight] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.mouth_right.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"mouth_right"] objectForKey:@"y"]];
        
        [self check:[[[result.face[0] iposition] nose] x]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.nose.x" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"nose"] objectForKey:@"x"]];
        
        [self check:[[[result.face[0] iposition] nose] y]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.nose.y" fromJSON:dic]
      withRealValue:[[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"nose"] objectForKey:@"y"]];
        
        [self check:[[result.face[0] iposition] width]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.position.width" fromJSON:dic]
      withRealValue:[[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"position"] objectForKey:@"width"]];
        
        [self check:[(MSMFace *)result.face[0] tag]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"face.0.tag" fromJSON:dic]
      withRealValue:[[[dic objectForKey:@"face"] objectAtIndex:0] objectForKey:@"tag"]];
        
        [self check:[result imgHeight]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"img_height" fromJSON:dic]
      withRealValue:[dic objectForKey:@"img_height"]];
        
        [self check:[result img_width]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"img_width" fromJSON:dic]
      withRealValue:[dic objectForKey:@"img_width"]];
        
        [self check:[result imgId]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"img_id" fromJSON:dic]
      withRealValue:[dic objectForKey:@"img_id"]];
        
        [self check:[result sessionId]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"session_id" fromJSON:dic]
      withRealValue:[dic objectForKey:@"session_id"]];
        
        [self check:[result url]
          withValue:[[CPJJSONAdapter new]
                     getValueWithPath:@"url" fromJSON:dic]
      withRealValue:[dic objectForKey:@"url"]];
        
        NSLog(@"通过测试");
        
    }];
    
}

- (void)check:(NSObject *)objt withValue:(NSObject *)objt2 withRealValue:(NSObject *)objt3{
        NSAssert([objt isEqual:objt2] && [objt2 isEqual:objt3], @"解析错误");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
