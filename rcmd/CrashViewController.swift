//
//  CrashViewController.swift
//  rcmd
//
//  Created by Hang Duong on 2023-05-09.
//

import Cocoa

class CrashViewController: NSViewController {

  @IBAction func crash(_: Any) {
    let alert = NSAlert()
    alert.messageText = "The app will close"
    alert.informativeText = "A crash report will be sent when you reopen the app."
    alert.addButton(withTitle: "Crash app")
    alert.addButton(withTitle: "Cancel")
    switch alert.runModal() {
    case NSApplication.ModalResponse.alertFirstButtonReturn:      
      fatalError()
    default:
      break
    }
  }
}
