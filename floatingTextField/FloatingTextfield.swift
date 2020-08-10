//
//  FloatingTextfield.swift
//  floatingTextField
//
//  Created by Vinitha on 09/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI

struct FloatingTextfield: View {
    let title:String
   var text:Binding<String>
    
    var body: some View {
            ZStack(alignment: .leading) {
                  Text(title)
                 .foregroundColor(Color(.placeholderText))
               .offset(y: text.wrappedValue.isEmpty ? 0 : -25)
                    
                .scaleEffect(text.wrappedValue.isEmpty ? 1 : 0.8, anchor: .leading)
                 TextField(title, text: text)
                
        }
     .padding(.top, 15)
    .animation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 0.0))
        
    }
}

