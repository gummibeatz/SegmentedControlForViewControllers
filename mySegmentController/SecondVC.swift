//
//  SecondVC.swift
//  mySegmentController
//
//  Created by Linus Liang on 9/26/15.
//  Copyright © 2015 Linus Liang. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController {
    
    var segmentController: UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let secondView: UIView = NSBundle.mainBundle().loadNibNamed("SecondView", owner: self, options: nil).last as! UIView
        self.view = secondView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}