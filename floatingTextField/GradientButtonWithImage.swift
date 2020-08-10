//
//  GradientButtonWithImage.swift
//  floatingTextField
//
//  Created by Vinitha on 09/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI

struct GradientButtonWithImage: View {
    var body: some View {
//        Text("Hello, World!")
        HStack {
                Image(systemName: "arrowshape.turn.up.right")
          
                           Text("Login")
                               .fontWeight(.semibold)
                               .font(.title)
                       }
                       .frame(minWidth: 0, maxWidth: .infinity)
                       .padding()
                       .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.pink]), startPoint: .leading, endPoint: .trailing))
                       .cornerRadius(40)
                       .padding(.horizontal, 20)
    }
}

struct GradientButtonWithImage_Previews: PreviewProvider {
    static var previews: some View {
        GradientButtonWithImage()
    }
}


struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
}

