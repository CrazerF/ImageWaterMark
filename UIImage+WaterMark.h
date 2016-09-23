//
//  UIImage+WaterMark.h
//  图片增加水印
//
//  Created by Fuyujiao on 16/9/8.
//  Copyright © 2016年 Crazer. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kWaterMarkTextFontOfSize 40
#define kWaterMarkTextColor whiteColor
#define kWaterMarkTextStartPointX 10
#define kWaterMarkTextStartPointY 10

@interface UIImage (WaterMark)

//图片添加文字水印
- (UIImage *)waterMarkWithText:(NSString *)text;

@end
