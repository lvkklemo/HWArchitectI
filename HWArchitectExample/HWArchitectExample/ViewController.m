//
//  ViewController.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/13.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "ViewController.h"
//#import "BaiduMapFactory.h"
//#import "GaodeMapFactory.h"
#import "MapEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _initMapEngine];
}

//- (void)_initBaiduMapFactoty{
//    id<IMapFactory> factory = [[BaiduMapFactory alloc] init];
//    id<IMapView> mapView = [factory getMapView:self.view.frame];
//    [self.view addSubview:mapView.getView];
//}
//
//- (void)_initGaodeFactoty{
//    id<IMapFactory> factory = [[GaodeMapFactory alloc] init];
//    id<IMapView> mapView = [factory getMapView:self.view.frame];
//    [self.view addSubview:mapView.getView];
//}

- (void)_initMapEngine{
   id<IMapFactory>factory = [MapEngine getFactory];
   id<IMapView> mapView = [factory getMapView:self.view.frame];
    [self.view addSubview:mapView.getView];
}
@end
