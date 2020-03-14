//
//  MapEngine.h
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/14.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"
@interface MapEngine : NSObject
+(id<IMapFactory>)getFactory;
@end

