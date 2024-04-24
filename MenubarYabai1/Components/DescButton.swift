//
//  DescButton.swift
//  MenubarYabai1
//
//  Created by mill on 24/4/2567 BE.
//

import SwiftUI

struct DescButton: View {
  
  let btnTitle : String
  let btnImage : String
  let btnCommand : String
  
    var body: some View {
      Button {
        Util.runCommand(btnCommand)
      } label : {
        HStack (spacing: 2) {
          Image(systemName: btnImage)
          Text(btnTitle)
            .font(.body)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .frame(height: 24)
        }
      }
//      .padding()
    }
}

#Preview {
    DescButton(
      btnTitle: "Title",
      btnImage: "tag.square",
      btnCommand: "echo 'Hello World'"
    )
}
