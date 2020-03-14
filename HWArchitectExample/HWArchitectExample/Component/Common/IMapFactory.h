//
//  IMapFactory.h
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMapView.h"

//工厂协议
@protocol IMapFactory <NSObject>
//生产MapView,不需要知道是百度地图或者高德地图, 知道地图的协议(标准)
- (id<IMapView>)getMapView:(CGRect)frame;
@end

