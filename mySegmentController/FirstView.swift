//
//  FirstView.swift
//  mySegmentController
//
//  Created by Linus Liang on 9/26/15.
//  Copyright © 2015 Linus Liang. All rights reserved.
//

import Foundation
import UIKit

class FirstView: UIView {

    var view: FirstView!
    

    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var tapMeLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    
    override init(frame: CGRect) {

        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        addSubview(view)
    }
    
    func loadViewFromNib() -> FirstView {
        let bundle = NSBundle.mainBundle()
        let nib = UINib(nibName: "FirstView", bundle: bundle)
        view = nib.instantiateWithOwner(self, options: nil).last as! FirstView
        return view
    }
    
}