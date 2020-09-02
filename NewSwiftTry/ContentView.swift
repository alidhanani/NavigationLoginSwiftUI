//
//  ContentView.swift
//  NewSwiftTry
//
//  Created by Ali Dhanani on 26/08/2020.
//  Copyright © 2020 Ali Dhanani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SignUpView()) {
                   Text("Sign In").font(.title)
                   .fontWeight(.bold)
                   .foregroundColor(Color.white)
                   .multilineTextAlignment(.center)
                   .frame(width: 300.0, height: 50.0).background(Color.green).cornerRadius(5.0)
                }.buttonStyle(PlainButtonStyle())
                Spacer()
                    .frame(height: 15.0)
                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 300.0, height: 50.0).background(Color.green).cornerRadius(5.0)
                }.buttonStyle(PlainButtonStyle())
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
