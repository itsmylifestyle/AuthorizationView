//
//  SignUp.swift
//  RegistrationPage
//
//  Created by Айбек on 23.12.2022.
//

import Foundation
import SwiftUI

struct SignUpTest : View {
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @Binding var index : Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 10) {
                        Text("Sign Up")
                            .foregroundColor(self.index == 1 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? .blue : .clear)
                            .frame(width: 100, height: 5)
                    }
                }
                .padding(.top, 30)

                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.red)
                        SecureField("Email address", text: self.$email)
                        Divider()
                            .background(Color.white.opacity(0.5))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.red)
                        SecureField("Password", text: self.$pass)
                        Divider()
                            .background(Color.white.opacity(0.5))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.red)
                        SecureField("Password", text: self.$repass )
                        Divider()
                            .background(Color.white.opacity(0.5))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            
            .background(Color.blue)
            .clipShape(CShapeFromRight())
            .contentShape(CShapeFromRight())
            
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: -5)
            
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            
            
            
            Button(action: {
                //
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: -5)
            }
            
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}
