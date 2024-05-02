//
//  MenuBarView.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//

import SwiftUI

struct MenuBarView: View {
  var body: some View {
    VStack {
      VStack{
        HStack (spacing: 2) {
          DescButton(btnTitle: "Smaller", btnImage: "minus", btnCommand: "yabai -m space --padding rel:20:20:20:20")
          DescButton(btnTitle: "Bigger", btnImage: "plus", btnCommand: "yabai -m space --padding rel:-20:-20:-20:-20")
          }
          
        }.padding(.top)
      
      
      HStack (spacing: 2) {
        
        DescButton(btnTitle: "Normal", btnImage: "0.square", btnCommand: TerminalCommand.paddingNormal.rawValue)
        DescButton(btnTitle: "FULL", btnImage: "arrow.up.left.and.arrow.down.right", btnCommand: TerminalCommand.paddingNone.rawValue)
      }
      
      
      Divider()
      VStack (alignment: .leading){
        Label("Tiling Layout", systemImage: "lightswitch.on")
          .labelStyle(.titleOnly)
        HStack (spacing: 2) {
          DescButton(btnTitle: "BSP", btnImage: "play", btnCommand: TerminalCommand.layoutBSP.rawValue)
          DescButton(btnTitle: "Stack", btnImage: "square.on.square", btnCommand: TerminalCommand.layoutStack.rawValue)
        }
        
      }
      
      Divider()
      VStack (alignment: .leading){
        Label("Sketchybar", systemImage: "lightswitch.on")
          .labelStyle(.titleOnly)
  
        HStack (spacing: 2) {
          DescButton(btnTitle: "Enable", btnImage: "lightswitch.on", btnCommand: "brew services start sketchybar")
          DescButton(btnTitle: "Disable", btnImage: "lightswitch.off", btnCommand: "brew services stop sketchybar")
        }
        HStack {
          DescButton(btnTitle: "Toggle Menubar", btnImage: "menubar.arrow.up.rectangle", btnCommand: "osascript ~/.hidemenubar.scpt")
            .frame(width: .infinity)
        }
      }
      Divider()
      VStack (alignment: .leading){
        Label("Restart", systemImage: "lightswitch.on")
          .labelStyle(.titleOnly)
        HStack (spacing: 2) {
          DescButton(btnTitle: "yabai", btnImage: "repeat.circle.fill", btnCommand: TerminalCommand.restartYabai.rawValue)
          DescButton(btnTitle: "skhd", btnImage: "repeat.circle.fill", btnCommand: TerminalCommand.restartSKHD.rawValue)
        }
      }
      
      Divider()
      QuitButtonView()
    }
    .frame(width:250)
  }
}



#Preview {
  MenuBarView()
}

struct QuitButtonView: View {
    @State private var isHovering = false

    var body: some View {
        Button(action: {
            NSApplication.shared.terminate(nil)
        }) {
            HStack {
                Text("Quit")
                Spacer()
                Text("⌘Q")
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 6)
            .frame(width: .infinity)
            .background(isHovering ? Color.gray.opacity(0.1) : Color.clear) // Change color on hover
            .cornerRadius(5) // Optional: Rounded corners
            .contentShape(Rectangle()) // Ensures the hover effect applies to the entire button area
            .onHover { hovering in
                self.isHovering = hovering
            }
        }
        .buttonStyle(PlainButtonStyle()) // Use the plain style to avoid button-like appearance
    }
}
