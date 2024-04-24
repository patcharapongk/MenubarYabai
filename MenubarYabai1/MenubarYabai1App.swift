//
//  MenubarYabai1App.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//
import Cocoa
import SwiftUI

@main
struct MenubarYabai1App: App {
  

  func checkAndRequestAccessibilityPermissions() {
      let options = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: true]
      let accessibilityEnabled = AXIsProcessTrustedWithOptions(options as CFDictionary)
      
      if !accessibilityEnabled {
          // Open System Preferences to the Accessibility pane
          let prefPage = "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"
          NSWorkspace.shared.open(URL(string: prefPage)!)
      }
  }

  var body: some Scene {
    MenuBarExtra ("Yabai Manager", systemImage: "terminal"){
      MenuBarView()
    }
    .menuBarExtraStyle(.window)
  }
}
