//
//  MapEngine.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/14.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "MapEngine.h"
#import "BaiduMapFactory.h"
#import "GaodeMapFactory.h"
#import "PlatformParser.h"

@implementation MapEngine

//动态配置如何实现
//方案一:通过b宏定义(区别地图类型:传参数)->枚举
//方案二:动态配置(xml,json,plist)

+(id<IMapFactory>)getFactory{
    
    PlatformParser*platformParser = [[PlatformParser alloc] init];
    NSMutableArray<Platform*>* array = [platformParser parser];
    for (Platform*platform in array) {
        if (platform.isOpen) {
        
    //断言如果为false它就打印一个错误日志信息，该信息包含了参数并且抛出一个异常
        NSParameterAssert([NSClassFromString(platform.factoryName) conformsToProtocol:@protocol(IMapFactory)]);
            
        id<IMapFactory> factory = [[NSClassFromString(platform.factoryName) alloc] init];
            
        return factory;
        }
    }
    return [[BaiduMapFactory alloc] init];
}
@end
