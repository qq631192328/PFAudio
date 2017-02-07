//
//  lameTool.h
//  01- 录音
//
//  Created by 王顺子 on 16/4/3.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lameTool : NSObject

+ (NSString *)audioToMP3: (NSString *)sourcePath isDeleteSourchFile: (BOOL)isDelete;

@end
