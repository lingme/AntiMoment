//
//  QuotesViewController.swift
//  AntiMoment
//
//  Created by min.ling on 2020/7/5.
//  Copyright © 2020 Zonx. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension QuotesViewController {
    
  static func freshController() -> QuotesViewController {
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    let identifier = NSStoryboard.SceneIdentifier("QuotesViewController")
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
      fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
    }
    return viewcontroller
  }

}
