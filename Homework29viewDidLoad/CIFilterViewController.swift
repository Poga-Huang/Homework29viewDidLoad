//
//  CIFilterViewController.swift
//  Homework29viewDidLoad
//
//  Created by 黃柏嘉 on 2021/12/2.
//

import UIKit
import CoreImage.CIFilterBuiltins

class CIFilterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let treeView = UIImageView(frame: CGRect(x: 0, y: 350, width: 414, height: 300))
        treeView.image = UIImage(named: "tree")
        view.addSubview(treeView)
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 50, width: 414, height: 300))
        view.addSubview(imageView)
        
        let image = UIImage(named: "tree")
        let ciImage = CIImage(image: image!)
        let filter = CIFilter.colorMonochrome()
        filter.inputImage = ciImage
        filter.intensity = 1
        if let output = filter.outputImage{
            let filterImage = UIImage(ciImage: output)
            imageView.image = filterImage
        }
        
        
    }
    

    
}
