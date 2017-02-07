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
            AVFormatIDKey: NSNumber(int: Int32(kAudioFormatLinearPCM)),
            // 采样率
            AVSampleRateKey: NSNumber(float: 8000),
            // 通道数
            AVNumberOfChannelsKey: NSNumber(int: 2),
            // 录音质量
            AVEncoderAudioQualityKey: NSNumber(int: Int32(AVAudioQuality.Min.rawValue))
        ]
        print(configDic)
        do {
            let record = try AVAudioRecorder(URL: url!, settings: configDic)
            // 准备录音(系统会给我们分配一些资源)
            record.prepareToRecord()
            
            return record
            
        }catch {
            print(error)
            return nil
        }
        
        
    }()
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        print("开始录音")
        // 开始录音
        record?.record()
        //        record?.recordForDuration(3)
        
        //        record?.recordAtTime((record?.deviceCurrentTime)! + 2, forDuration: 3)
        
        
        
        
    }
    
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // 根据当前的录音时间, 做处理
        // 如果录音不超过两秒, 则删除录音
        // 如果超过, 就正常处理
//        if record?.currentTime > 2 {
//            record?.stop()
//        }else {
//            print("录音时间太短")
//            // 删除录音文件
//            // 如果想要删除录音文件, 必须先让录音停止
//            record?.stop()
//            record?.deleteRecording()
//        }
        
        print("结束录音")
        // 结束录音
        record?.stop()
        
//        let data = NSData.dataWithContentsOfMappedFile("/Users/hpf/Desktop/test.pcm") as! NSData
        
//        let newData = writeWaveHead(data , 8000)
//        let newData = VoiceConverter.writeWaveHead(data, and: 8000)
        
//        newData.writeToFile("/Users/hpf/Desktop/test.wav", atomically: true)
        
//        VoiceConverter.ConvertWavToAmr("/Users/hpf/Desktop/test.wav", amrSavePath: "/Users/hpf/Desktop/test.amr")
        
//        lameTool.audioToMP3("/Users/hpf/Desktop/test.pcm", isDeleteSourchFile: true)
        
        PFAudio.pcm2Mp3("/Users/hpf/Desktop/test.pcm", isDeleteSourchFile: true)
//        PFAudio.audioToMP3("/Users/hpf/Desktop/test.pcm", isDeleteSourchFile: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

