//
//  FirstVC.swift
//  mySegmentController
//
//  Created by Linus Liang on 9/26/15.
//  Copyright © 2015 Linus Liang. All rights reserved.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    
    var segmentController: UISegmentedControl?
    var firstView: FirstView?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        firstView = FirstView(frame: self.view.frame)
        self.view = firstView
        addGestureRecognizers()
        firstView!.view.imageView?.backgroundColor = UIColor.blueColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addGestureRecognizers() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "imageTapped:")
        firstView!.view.imageView!.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func imageTapped(sender: UIImageView) {
        print("imageTapped")
    }
    
}
