//
//  LoginView.swift
//  NewSwiftTry
//
//  Created by Ali Dhanani on 26/08/2020.
//  Copyright © 2020 Ali Dhanani. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var userName = ""
    @State var passWord = ""
    @State var show = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("LOGIN")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                Spacer()
                    .frame(height: 30.0)
                TextField("Username", text: $userName)
                    .frame(width: 300.0, height: 30.0).textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                    .frame(height: 10.0)
                SecureField("Password", text: $passWord)
                    .frame(width: 300.0, height: 30.0).textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                    .frame(height: 20.0)
                Button(action: {
                    self.show = "Username "+self.userName+" and Password "+self.passWord
                }) {
                    Text("Login").font(.headline)
                        .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 300.0, height: 50.0).background(Color.green).cornerRadius(5.0)
                }
                Spacer()
                .frame(height: 20.0)
                Text(self.show)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .frame(height: 22.0)
            }
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
