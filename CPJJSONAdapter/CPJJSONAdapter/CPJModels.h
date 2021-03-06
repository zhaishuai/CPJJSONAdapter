//
//  CPJModels.h
//  CPJJSONAdapter
//
//  Created by shuaizhai on 2/23/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPJJSONAdapter.h"
@interface CPJModels : NSObject

@end


CREATE_CPJMODEL_BEGAIN(MSMAge)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(range, range)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(value, value)
CREATE_CPJMODEL_END

CREATE_CPJMODEL_BEGAIN(MSMGuess)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(confidence, confidence)
    CPJMODEL_ADD_NSSTRING_PROPERTY(value, value)
CREATE_CPJMODEL_END

CREATE_CPJMODEL_BEGAIN(MSMSmiling)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(value, value)
CREATE_CPJMODEL_END

CREATE_CPJMODEL_BEGAIN(MSMAttribute)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMAge, age, age)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMGuess, gender, gender)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMGuess, race, race)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMSmiling, smiling, smiling)
CREATE_CPJMODEL_END


CREATE_CPJMODEL_BEGAIN(MSMPoint)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(x, x)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(y, y)
CREATE_CPJMODEL_END


CREATE_CPJMODEL_BEGAIN(MSMPosition)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, center, center)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, eyeLeft, eye_left)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, eyeRight, eye_right)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(height, height)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, mouthLeft, mouth_left)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, mouthRight, mouth_right)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPoint, nose, nose)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(width, width)
CREATE_CPJMODEL_END


CREATE_CPJMODEL_BEGAIN(MSMFace)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMAttribute, atrribute, attribute)
    CPJMODEL_ADD_NSSTRING_PROPERTY(faceId, face_id)
    CPJMODEL_ADD_CPJMODEL_PROPERTY(MSMPosition, iposition, position)
    CPJMODEL_ADD_NSSTRING_PROPERTY(tag, tag)
CREATE_CPJMODEL_END


CREATE_CPJMODEL_BEGAIN(MSMFaceResult)
    CPJMODEL_ADD_NSARRAY_PROPERTY(MSMFace, face, face)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(imgHeight, img_height)
    CPJMODEL_ADD_NSSTRING_PROPERTY(imgId, img_id)
    CPJMODEL_ADD_NSNUMBER_PROPERTY(img_width, img_width)
    CPJMODEL_ADD_NSSTRING_PROPERTY(sessionId, session_id)
    CPJMODEL_ADD_NSSTRING_PROPERTY(url, url)
CREATE_CPJMODEL_END