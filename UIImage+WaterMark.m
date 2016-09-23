//
//  UIImage+WaterMark.m
//  图片增加水印
/*
 图片压缩：
 1.高宽比压缩。UIGraphicsBeginImageContextWithOptions
 2.图片质量的压缩。UIImageJPEGRepresentation（要压缩的图片，压缩比例【0-1】）
 */

#import "UIImage+WaterMark.h"


@implementation UIImage (WaterMark)

//图片添加文字水印
- (UIImage *)waterMarkWithText:(NSString *)text
{
    //开启图片上下文（上下文大小，是否是不透明，缩放比例0自动）
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    //先把当前图片绘制到上下文中
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //把文字绘制到上下文中
    [text drawAtPoint:CGPointMake(kWaterMarkTextStartPointX, kWaterMarkTextStartPointY)
       withAttributes:@{NSForegroundColorAttributeName:[UIColor kWaterMarkTextColor],NSFontAttributeName:[UIFont systemFontOfSize:kWaterMarkTextFontOfSize]}];
    
    //获取上下文
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
