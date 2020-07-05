import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        popover.contentViewController = QuotesViewController.freshController()
        if let button = statusItem.button {
          button.image = NSImage(named:NSImage.Name("honorary"))
          button.action = #selector(togglePopover(_:))
        }
    }
    
    @objc func togglePopover(_ sender: Any?) {
      if popover.isShown {
        ​closePopover(sender: sender)
      } else {
        ​showPopover(sender: sender)
      }
    }

    func ​showPopover(sender: Any?) {
        if let button = statusItem.button{
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }

    }

    func ​closePopover(sender: Any?) {
        popover.performClose(sender)
    }
}

