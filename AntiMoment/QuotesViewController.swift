//
//  QuotesViewController.swift
//  AntiMoment
//
//  Created by min.ling on 2020/7/5.
//  Copyright © 2020 Zonx. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {
    
    @IBOutlet var textLabel : NSTextField!
    @IBOutlet var textYear : NSTextField!
    @IBOutlet var textAge : NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    
    @objc func update() {
    }
}

extension QuotesViewController {
    
  static func freshController() -> QuotesViewController {
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    let identifier = NSStoryboard.SceneIdentifier("QuotesViewController")
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
      fatalError("")
    }
    return viewcontroller
  }

}
