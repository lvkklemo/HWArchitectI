//
//  PlatformParser.m
//  HWArchitectExample
//
//  Created by 宇航 on 2020/3/14.
//  Copyright © 2020 yuhang. All rights reserved.
//

#import "PlatformParser.h"

@interface PlatformParser ()
@property(nonatomic,strong) NSMutableArray<Platform*> * array;
@end

@implementation PlatformParser

- (instancetype)init{
    self = [super init];
    if (self) {
        _array = [NSMutableArray array];
    }
    return self;
}

- (NSMutableArray<Platform*>*)parser{

    NSString*filePath =[[NSBundle mainBundle] pathForResource:@"map_configs" ofType:@".json"];
    
    NSArray *dataArray = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:NSJSONReadingMutableLeaves error:nil];
    
    for (NSDictionary * dict in dataArray) {
        NSLog(@"%@",dict);
        Platform*platform=[[Platform alloc] init];
        platform.ids = [dict[@"ids"] integerValue];
        platform.appkey = dict[@"appkey"];
        platform.factoryName = dict[@"factoryName"];
        platform.isOpen = [dict[@"isOpen"] boolValue];
        [_array addObject:platform];
    }

    return _array;
    
}
@end
