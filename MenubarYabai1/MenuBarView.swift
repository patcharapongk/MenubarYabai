//
//  MenuBarView.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//

import SwiftUI

struct MenuBarView: View {
  var body: some View {
    VStack{
      HStack (spacing: 2) {
        Button("Smaller", systemImage: "minus") {
          Util.runCommand("yabai -m space --padding rel:20:20:20:20")
        }
        Button("Bigger", systemImage: "plus") {
          Util.runCommand("yabai -m space --padding rel:-20:-20:-20:-20")
        }     
        
      }.padding(2)
    }

    HStack (spacing: 2) {
      Button("Normal", systemImage: "0.square") {
        Util.runCommand("yabai -m space --padding abs:24:20:24:20")
      }
      Button("FULL", systemImage: "arrow.up.left.and.arrow.down.right") {
        Util.runCommand("yabai -m space --padding abs:0:0:0:0")
      }
    }
    
    //

    Divider()
    HStack (spacing: 2) {
      Button("BSP", systemImage: "play") {
        Util.runCommand("yabai -m space --layout bsp")
      }
      Button("Stack", systemImage: "square.on.square") {
        Util.runCommand("yabai -m space --layout stack")
      }
   
    }
    Divider()
    Button("Quit") {
      NSApplication.shared.terminate(nil)
    }.keyboardShortcut("q")
  }
}

#Preview {
  MenuBarView()
}
