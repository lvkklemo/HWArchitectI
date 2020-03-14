//
//  IMapView.h
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import <UIKit/UIKit.h>

//地图协议 标准
@protocol IMapView <NSObject>
//定义具体的标准
//OOP(面向对象)父类的引用(指针)指向子类的实例对象(多态)
- (UIView*) getView;
//指定z地图大小
- (instancetype) initWirhFrame:(CGRect)frame;
@end

