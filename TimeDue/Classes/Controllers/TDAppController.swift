//
//  TDAppController.swift
//  TimeDue
//
//  Created by Vikas on 26/08/14.
//  Copyright (c) 2014 LeftShift. All rights reserved.
//

import Cocoa

class TDAppController: NSObject {

    @IBOutlet weak var ourView: NSView!
    var viewCont: NSViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let loginCont: TDLoginController = TDLoginController(nibName: "TDLoginController", bundle: nil)
        loginCont.view.frame = ourView.bounds
        loginCont.view.autoresizingMask = NSAutoresizingMaskOptions.ViewWidthSizable | NSAutoresizingMaskOptions.ViewHeightSizable
        ourView.addSubview(loginCont.view)
    }
}

