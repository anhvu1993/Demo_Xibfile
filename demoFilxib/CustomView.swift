//
//  customView.swift
//  demoFilxib
//
//  Created by Anh vũ on 6/22/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class CustomView: UIView {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var text: UITextView!
    @IBAction func action(_ sender: Any) {
    text.text = textField.text
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       let _ = loadViewFromNib()
    }
    
    func loadViewFromNib() -> UIView  {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
        return view
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
