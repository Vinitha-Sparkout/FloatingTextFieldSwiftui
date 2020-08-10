//
//  PasswordTextField.swift
//  floatingTextField
//
//  Created by Vinitha on 09/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI

struct PasswordTextField: View {
    let title:String
     var text:Binding<String>
    @State private  var  secured: Bool = true
    var body: some View {
        HStack
            {
        ZStack(alignment: .leading) {

                         Text(title)
                        .foregroundColor(Color(.placeholderText))
                        .offset(y: text.wrappedValue.isEmpty ? 0 : -25)
//                       .opacity(text.wrappedValue.isEmpty ? 0 : 1)
                       .scaleEffect(text.wrappedValue.isEmpty ? 1 : 0.8, anchor: .leading)
            if secured {
                SecureField(title, text: text)
            }
            else
            {
                TextField(title, text: text)
            }
            
            }
                .padding(.top, 15)
                         .animation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 0.0))
        Button(action: {
                          self.secured.toggle()
                      }) {

                          // 2
                          if secured {

                              Text("Show")

                          } else {
                              Text("Hide")

                          }
               }
        }
          
        
    }
}

//struct PasswordTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        PasswordTextField()
//    }
//}
