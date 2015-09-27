//
//  ThirdVC.swift
//  mySegmentController
//
//  Created by Linus Liang on 9/26/15.
//  Copyright © 2015 Linus Liang. All rights reserved.
//

import Foundation
import UIKit

class ThirdVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let thirdView: UIView = NSBundle.mainBundle().loadNibNamed("ThirdView", owner: self, options: nil).last as! UIView
        self.view = thirdView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}