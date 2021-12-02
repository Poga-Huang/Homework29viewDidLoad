//
//  ViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/1.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //製作出一個負責顯示漸層的view然後加入到view中
        let gradientView = UIView(frame: CGRect(x: view.frame.width/2-200, y: 50, width: 400, height: 400))
        view.addSubview(gradientView)
        //生成一個UIImageView然後裝著Apple圖片
        let appleImage = UIImageView(image: UIImage(named: "apple"))
        //然後生成漸層CAGradientLayer
        let gradientLayer = CAGradientLayer()
        
        //設定漸層與圖片都跟一開始負責顯示的View尺寸一樣
        gradientLayer.frame = gradientView.bounds
        appleImage.frame = gradientView.bounds
        
        //設定漸層的顏色
        gradientLayer.colors = [UIColor.systemGreen.cgColor,UIColor.systemYellow.cgColor,UIColor.systemOrange.cgColor,UIColor.systemRed.cgColor,UIColor.systemPurple.cgColor,UIColor.systemTeal.cgColor]
        
        //漸層每個顏色的位置
        gradientLayer.locations = [0,0.5,0.55,0.6,0.65,0.7,1.0]
        
        //漸層加入到負責顯示的gradientView中
        gradientView.layer.addSublayer(gradientLayer)
        
        //漸層的mask是Apple Logo圖片
        gradientView.mask = appleImage
        
        //製作SKView
        let skView = SKView(frame: view.frame)
        
        //加到畫面底層
        view.insertSubview(skView, at: 0)
        
        //製作負責控制的SKScene
        let scene = SKScene(size: skView.frame.size)
        skView.presentScene(scene)
        
        //負責效果的SKEmitterNode
        let emitterNode = SKEmitterNode(fileNamed: "MyParticle")
        scene.addChild(emitterNode!)
        
        //設定效果位置
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
       
    }

}




