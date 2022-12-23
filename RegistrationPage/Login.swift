//
//  Login.swift
//  RegistrationPage
//
//  Created by Айбек on 23.12.2022.
//

import Foundation
import SwiftUI

struct LoginTest: View {
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        
                        Capsule()
                            .fill(self.index == 0 ? Color.blue : Color.clear)
                            .frame(width: 100, height: 5)
                        }
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.green)
                        
                        TextField("Email address", text: self.$email)
                    }
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.green)
                        
                        SecureField("Password", text: self.$pass)
                    }
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        //
                    }) {
                         Text("Forgot password?")
                            .foregroundColor(.white.opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color.red)
            .clipShape(CShapeFromLeft())
            .contentShape(CShapeFromLeft())
            .shadow(color: .black.opacity(0.5), radius:  5, x: 0, y: -5)
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button(action: {
                //
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(.blue)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 35)
            .opacity(self.index == 0 ? 1 : 0)
        }
    }
}
