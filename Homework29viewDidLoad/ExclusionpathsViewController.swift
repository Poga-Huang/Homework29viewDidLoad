//
//  ExclusionpathsViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/2.
//

import UIKit

class ExclusionpathsViewController: UIViewController {
    
    
    @IBOutlet weak var lyricTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //圖片
        let heartImage = UIImageView(image: UIImage(named: "heart"))
        heartImage.frame = CGRect(x: 112, y: 200, width: 150, height: 150)
        
        //加到TextView的subview中
        lyricTextView.addSubview(heartImage)
        
        //圖片位置
        let heartPath = UIBezierPath(rect: heartImage.frame)
        
        //加到exclusionPath
        lyricTextView.textContainer.exclusionPaths = [heartPath]
    }
    

    
}
