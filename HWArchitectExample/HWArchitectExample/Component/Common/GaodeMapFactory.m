//
//  GaodeMapFactory.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "GaodeMapFactory.h"
#import "GaodeMapView.h"

@implementation GaodeMapFactory

- (id<IMapView>)getMapView:(CGRect)frame {
    return [[GaodeMapView alloc] initWirhFrame:frame];
}

@end
