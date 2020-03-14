//
//  BaiduMapFactory.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"

@implementation BaiduMapFactory

- (id<IMapView>)getMapView:(CGRect)frame {
    return [[BaiduMapView alloc] initWirhFrame:frame];
}

@end
