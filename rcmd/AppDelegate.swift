//
//  AppDelegate.swift
//  rcmd
//
//  Created by Hang Duong on 2023-05-08.
//

import Foundation
import Cocoa
//import AppCenter
//import AppCenterAnalytics
//import AppCenterCrashes
//
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var window: NSWindow!
      @IBOutlet weak var pageController: NSPageController!

      private var services: [String] = [ "Welcome", "Build", "Test", "Crashes", "Analytics", "Push"]


    func applicationWillTerminate(_ aNotification: Notification) {}
    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        AppCenter.start(withAppSecret: "<APP SECRET HERE>", services: [
//              Analytics.self,
//              Crashes.self,
//            ])
//
            pageController.arrangedObjects = services
    }
    
    // NSPageController delegate
      func pageController(_ pageController: NSPageController, identifierFor object: Any) -> String {
        return object as! String
      }

      func pageController(_ pageController: NSPageController, viewControllerForIdentifier identifier: String) -> NSViewController {
        switch identifier {
//        case "Crashes":
//          return CrashViewController(nibName: identifier, bundle: nil)
//        case "Analytics":
//          return AnalyticsViewController(nibName: identifier, bundle: nil)
        default:
          return NSViewController(nibName: identifier, bundle: nil)
        }
      }
}
