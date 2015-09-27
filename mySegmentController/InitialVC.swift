//
//  InitialVC.swift
//  mySegmentController
//
//  Created by Linus Liang on 9/26/15.
//  Copyright © 2015 Linus Liang. All rights reserved.
//

import Foundation
import UIKit

class InitialVC: UINavigationController {
    
    var initialViewControllers: [UIViewController]?
    
    var segmentedControl: UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstVC = FirstVC()
        let secondVC = SecondVC()
        let thirdVC = ThirdVC()
        initialViewControllers = [firstVC, secondVC, thirdVC]
        setupSegmentedControl()
        self.navigationBar.addSubview(self.segmentedControl!)
        segmentedControl?.selectedSegmentIndex = 0
        self.setViewControllers([firstVC], animated: false)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        let oldFrame = self.navigationBar.frame
        self.navigationBar.frame = CGRect(x: 0, y: self.view.frame.height - oldFrame.height, width: oldFrame.width, height: oldFrame.height)
        self.navigationBar.backgroundColor = UIColor.clearColor()
        self.navigationBar.barTintColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupSegmentedControl() {
        let titles = ["firstVC","secondVC", "thirdVC"]
        self.segmentedControl = UISegmentedControl(items: titles)
        self.segmentedControl?.frame = CGRect(x: 0, y: -10, width: self.view.frame.width, height: 50)
        self.segmentedControl!.addTarget(self, action: "indexDidChangeForSegmentedControl:", forControlEvents: .ValueChanged)
    }
    
    func indexDidChangeForSegmentedControl(sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        self.viewControllers = [initialViewControllers![index]]
    }
}