//
//  ViewController.swift
//  PFAudio
//
//  Created by hpf on 17/2/6.
//  Copyright © 2017年 zmartec. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    lazy var record: AVAudioRecorder? = {
        // 开始录音
        
        // url : 录音文件的路径
        let url = NSURL(string: "/Users/hpf/Desktop/test.pcm")
        
        
        // setting : 录音的设置项
        // 录音参数设置(不需要掌握, 一些固定的配置)
        let configDic: [String: AnyObject] = [
            // 编码格式
            AVFormatIDKey: NSNumber(value: Int32(kAudioFormatLinearPCM)),
            // 采样率
            AVSampleRateKey: NSNumber(value: 8000),
            // 通道数
            AVNumberOfChannelsKey: NSNumber(value: 2),
            // 录音质量
            AVEncoderAudioQualityKey: NSNumber(value: Int32(AVAudioQuality.min.rawValue))
        ]
        print(configDic)
        do {
            let record = try AVAudioRecorder(url: url! as URL, settings: configDic)
            // 准备录音(系统会给我们分配一些资源)
            record.prepareToRecord()
            
            return record
            
        }catch {
            print(error)
            return nil
        }
        
        
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("开始录音")
        // 开始录音
        record?.record()
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("结束录音")
        // 结束录音
        record?.stop()
        //pcm转amr 采样率只能设置8000
        PFAudio.pcm2Amr("/Users/hpf/Desktop/test.pcm", isDeleteSourchFile: true)
        //pcm转mp3 采样率就随意
//        PFAudio.pcm2Mp3("/Users/hpf/Desktop/test.pcm", isDeleteSourchFile: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

