//
//  QuotesViewController.swift
//  AntiMoment
//
//  Created by min.ling on 2020/7/5.
//  Copyright © 2020 Zonx. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {
    
    @IBOutlet var textYear : NSTextField!
    @IBOutlet var textAge : NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    
    @objc func update() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let date1 = dateFormatter.date(from: "1996/12/23")
        let date2 = Date().addingTimeInterval(TimeInterval(NSTimeZone.system.secondsFromGMT()))
        let componentsDay = NSCalendar.current.dateComponents([.day], from: date1!, to: date2)
        let componentsYear = NSCalendar.current.dateComponents([.year], from: date1!, to: date2)
        
        textYear.stringValue = String(format:"%@ · %@天", "1996年12月23号", String(componentsDay.day!))
        textAge.stringValue = String(format:"%@.%@ 岁", String(componentsYear.year!), String(Int(Date().timeIntervalSinceReferenceDate)))
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
