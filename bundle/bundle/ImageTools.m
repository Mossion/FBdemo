//
//  ImageTools.m
//  BundleDemo
//
//  Created by Moss1on on 2017/8/24.
//  Copyright © 2017年 Mossion. All rights reserved.
//

#import "ImageTools.h"

@implementation ImageTools

+ (UIImage *)loadImageWithImageName:(NSString *)imageName{
    UIImage *image = nil;
    if (imageName != nil) {
        NSString * path = [[self localBundle] pathForResource:imageName ofType:@"png"];
        NSLog(@"path:%@",path);
        image = [UIImage imageWithContentsOfFile:path];
        NSLog(@"image:%@",image);
    }
    return image;
}


/**
 获取SDK中的资源包

 @return 资源包的实例对象
 */
+ (NSBundle *)localBundle{
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
        // bundle.framework  framework的名称
        // demo.bundle  bundle的名称
        NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"bundle.framework/demo.bundle"];
        frameworkBundle = [[NSBundle alloc] initWithPath:frameworkBundlePath];
        NSLog(@"frameworkBundlePath:%@",frameworkBundlePath);
        NSLog(@"frameworkBundle:%@",frameworkBundle);
    });
    return frameworkBundle;
}

@end
