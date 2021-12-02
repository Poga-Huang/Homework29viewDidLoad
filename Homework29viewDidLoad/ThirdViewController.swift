//
//  ThirdViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/1.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            let degree = CGFloat.pi/180
            let lineWith:CGFloat = 30
            let radius:CGFloat = 180
            let center = CGPoint(x: 207, y: 400)
            let circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: degree*0, endAngle: degree*360, clockwise: true)
            let circleLayer = CAShapeLayer()
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineWidth = lineWith
            circleLayer.strokeColor = UIColor.lightGray.cgColor
            circleLayer.path = circlePath.cgPath
            view.layer.addSublayer(circleLayer)
            
           
            let progressLine = UIBezierPath(arcCenter: center, radius: radius, startAngle: CGFloat.pi/180*270, endAngle:CGFloat.pi/180*630 , clockwise: true)
            let progressLayer = CAShapeLayer()
            progressLayer.path = progressLine.cgPath
            progressLayer.fillColor = UIColor.clear.cgColor
            progressLayer.strokeColor = UIColor.systemOrange.cgColor
            progressLayer.lineWidth = lineWith
            view.layer.addSublayer(progressLayer)
           
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = 0
            animation.toValue = 1
            animation.duration = 3
            animation.repeatCount = .greatestFiniteMagnitude
            progressLayer.add(animation, forKey: nil)
       
        
        let label = UILabel(frame: CGRect(origin:CGPoint(x: center.x-150, y: center.y-50), size: CGSize(width: 300, height: 100)))
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "Loading..."
        label.textAlignment = .center
        view.addSubview(label)
        }
        
        
    

    

}
