//
//  ChartViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/2.
//

import UIKit

class ChartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //變數設定
        let dergree = CGFloat.pi/180
        let lineWidth:CGFloat = 80
        let radius:CGFloat = 100
        var startDegree:CGFloat = 270
        let center = CGPoint(x: 207, y: 200)
        let percentage:[CGFloat] = [25,25,25,25]
        
        
        //圓餅圖
        for percentage in percentage {
            let endDegree = startDegree+(360*percentage/100)
            let path = UIBezierPath()
            path.move(to: center)
            path.addArc(withCenter: center, radius: radius, startAngle: startDegree*dergree, endAngle: endDegree*dergree, clockwise: true)
            let percentagelayer = CAShapeLayer()
            percentagelayer.path = path.cgPath
            percentagelayer.lineWidth = lineWidth
            percentagelayer.fillColor = CGColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
            
            view.layer.addSublayer(percentagelayer)
            
            func createlabel(startDgree:CGFloat,percentage:CGFloat)->UILabel{
                let textCenter = startDegree+(360*percentage/200)
                let textPath = UIBezierPath(arcCenter: center, radius: radius/2, startAngle: dergree*textCenter, endAngle: dergree*textCenter, clockwise: true)
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
                label.font = UIFont.systemFont(ofSize: 20)
                label.text = "\(percentage)%"
                label.backgroundColor = .white
                label.sizeToFit()
                label.center = textPath.currentPoint
                
                return label
            }
            view.addSubview(createlabel(startDgree: startDegree, percentage: percentage))
            
            startDegree = endDegree
        }
        //甜甜圈圖表
        for percentage in percentage {
            let endDegree = startDegree+(360*percentage/100)
            let path = UIBezierPath(arcCenter: CGPoint(x: 207, y: 450), radius: radius, startAngle: startDegree*dergree, endAngle: endDegree*dergree, clockwise: true)
            let percentagePath = CAShapeLayer()
            percentagePath.path = path.cgPath
            percentagePath.fillColor = UIColor.clear.cgColor
            percentagePath.strokeColor = CGColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: CGFloat.random(in: 0...1))
            percentagePath.lineWidth = lineWidth
            view.layer.addSublayer(percentagePath)
            
            func createLabel(percentage:CGFloat,startDegree:CGFloat)->UILabel{
                let textCenter = startDegree+(360*percentage/200)
                let textPath = UIBezierPath(arcCenter: CGPoint(x: 207, y: 450), radius: radius, startAngle: dergree*textCenter, endAngle: dergree*textCenter, clockwise: true)
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
                label.font = UIFont.systemFont(ofSize: 25)
                label.text = "\(percentage)%"
                label.sizeToFit()
                label.backgroundColor = .white
                label.center = textPath.currentPoint
                
                return label
            }
            view.addSubview(createLabel(percentage: percentage, startDegree: startDegree))
            startDegree = endDegree
        }
    }
    

    
}
