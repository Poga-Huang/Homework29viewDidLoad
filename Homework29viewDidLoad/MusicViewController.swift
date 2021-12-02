//
//  MusicViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/2.
//

import UIKit
import AVKit

class MusicViewController: UIViewController {
    
    //progress View IBOutlet
    @IBOutlet weak var musicProgress: UIProgressView!
    //timer
    var timer:Timer?
    //AVPlayer
    let player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //URL
        let url = Bundle.main.url(forResource: "bensound-creativeminds", withExtension: ".mp3")
        //AVPlayerItem
        let playerItem = AVPlayerItem(url: url!)
        //放進AVPlayer
        player.replaceCurrentItem(with: playerItem)
        //播放
        player.play()
        //啟用timer
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(getMusicTime), userInfo: nil, repeats: true)
        
    }
    //每0.1秒更新一次進度
    @objc func getMusicTime(){
        musicProgress.progress = Float(player.currentTime().seconds/147)
    }
    
    
    

}
