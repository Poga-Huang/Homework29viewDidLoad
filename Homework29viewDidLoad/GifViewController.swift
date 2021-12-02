//
//  GifViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/2.
//

import UIKit
import CoreImage.CIFilterBuiltins

class GifViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let gifImage1 = UIImageView(frame: CGRect(x: 0, y: 50, width: 414, height: 300))
        let gifImage2 = UIImageView(frame: CGRect(x: 0, y: 550, width: 414, height: 300))
        view.addSubview(gifImage1)
        view.addSubview(gifImage2)
        let animationImages = UIImage.animatedImageNamed("a092381fd625c6121061f03807623ba9-", duration: 2)
        let animationImages2 = UIImage.animatedImageNamed("a2c71f71fd86ec58d3776571311dc18f-", duration: 2)
        gifImage1.image = animationImages
        gifImage2.image = animationImages2
        
        
       
    }
    


}
