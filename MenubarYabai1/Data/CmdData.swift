//
//  CmdData.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//

import Foundation
enum TerminalCommand: String {
    case paddingReduce = "yabai -m space --padding rel:20:20:20:20"
    case paddingIncrease = "yabai -m space --padding rel:-20:-20:-20:-20"
    case paddingNormal = "yabai -m space --padding abs:24:20:24:20"
    case paddingNone = "yabai -m space --padding abs:0:0:0:0"
    case layoutBSP = "yabai -m space --layout bsp"
    case layoutStack = "yabai -m space --layout stack"
    case sketchybarEnable = "brew services start sketchybar"
    case sketchybarDisable = "brew services stop sketchybar"
    case restartYabai = "yabai --restart-service"
    case restartSKHD = "skhd --restart-service"
}
