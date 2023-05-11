//
//  Window.swift
//  rcmd
//
//  Created by Hang Duong on 2023-05-08.
//

import Foundation
import Cocoa

struct Window {
    let id = UUID()
    let name: String
    let wid: Int
    let pid: Int
    let alias: String
    let icon: NSImage
    
    init(
        name: String = "",
        wid: Int = -1,
        pid: Int = -1,
        alias: String = "",
        icon: NSImage
    ) {
        self.name = name
        self.wid = wid
        self.pid = pid
        self.alias = alias
        self.icon = icon
    }
    
    static func ==(left: Window, right: Window) -> Bool {
            return left.pid == right.pid
        }
}
