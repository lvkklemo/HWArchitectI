//
//  BaiduMapView.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "BaiduMapView.h"

@interface BaiduMapView ()
@property(nonatomic,strong)BMKMapView*mapView;
@end

@implementation BaiduMapView

- (instancetype)initWirhFrame:(CGRect)frame{
    self = [super init];
    if (self) {
        //初始化百度地图
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}

- (UIView*) getView{    
    return _mapView;
}



@end
