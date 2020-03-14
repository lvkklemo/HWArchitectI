//
//  Platform.h
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/14.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Platform : NSObject
@property(nonatomic,assign) NSInteger ids;
@property(nonatomic,copy)   NSString* appkey;
@property(nonatomic,copy)   NSString* factoryName;
@property(nonatomic,assign) BOOL isOpen;
@end

