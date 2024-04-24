//
//  Util.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//

import Foundation

public class Util {
  public static func runCommand(_ command: String) {
    let task = Process()
    let pipe = Pipe()
    let errorPipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = errorPipe
    task.executableURL = URL(fileURLWithPath: "/bin/zsh")
    task.arguments = ["-c", "export PATH=/usr/local/bin:$PATH; export TERM=xterm-256color; source /Users/mill/.zshrc; \(command)"]

    
    do {
      try task.run()
      task.waitUntilExit() // Wait for the task to finish
      
      let data = pipe.fileHandleForReading.readDataToEndOfFile()
      let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()
      let output = String(data: data, encoding: .utf8) ?? ""
      let errorOutput = String(data: errorData, encoding: .utf8) ?? ""
      
      print("Output: \(output)")
      if !errorOutput.isEmpty {
        print("Error: \(errorOutput)")
      }
    } catch {
      print("Error running command: \(error)")
    }
  }
}
