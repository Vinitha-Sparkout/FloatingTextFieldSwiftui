//
//  ContentView.swift
//  floatingTextField
//
//  Created by Vinitha on 09/08/20.
//  Copyright © 2020 Vinitha. All rights reserved.
//

import SwiftUI
//import FloatingTextfield

struct ContentView: View {
    
    @State private var name = ""
     @State private var password = ""
    
    var body: some View {
        VStack(spacing:20) {
         Text("Login")
            FloatingTextfield(title: "First Name", text: $name)
            Divider()
            PasswordTextField(title: "Password", text: $password)
            Divider()
            Button(action: {
                          
                LoadingView(isShowing: .constant(true))
                {


                    NavigationLink("Test", destination: HomeView())
                }
                
                       }) {
                        GradientButtonWithImage()
            }
        .buttonStyle(GradientBackgroundStyle())
        }
         .padding(.leading, 16)
        .padding(.trailing,16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



