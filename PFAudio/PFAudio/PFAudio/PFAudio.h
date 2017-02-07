//
//  PFAudio.h
//  PFAudio
//
//  Created by hpf on 17/2/7.
//  Copyright © 2017年 zmartec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface PFAudio : NSObject
/**
 *  转换wav到amr
 *
 *  @param wavPath  wav文件路径
 *  @param savePath amr保存路径
 *
 *  @return 0失败 1成功
 */
+ (BOOL) wav2Amr:(NSString *)wavPath to:(NSString *)savePath;

/**
 *  转换amr到wav
 *
 *  @param amrPath  amr文件路径
 *  @param savePath wav保存路径
 *
 *  @return 0失败 1成功
 */
+ (BOOL) amr2Wav:(NSString *)amrPath to:(NSString *)savePath;

/**
	获取录音设置.
 建议使用此设置，如有修改，则转换amr时也要对应修改参数，比较麻烦
	@returns 录音设置
 */
+ (NSDictionary*)GetAudioRecorderSettingDict;

+ (NSData*) writeWaveHead:(NSData *)audioData and:(long )sampleRate;
@end
