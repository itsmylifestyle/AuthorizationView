//
//  ContentView.swift
//  RegistrationPage
//
//  Created by Айбек on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0//отвечает за переход между регистрацией и логином
    
    var body: some View {
        GeometryReader { _ in
            VStack {
                Image("logoQaz")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                
                ZStack {
                    SignUp(index: self.$index)
                        .zIndex(Double(self.index))
                    
                    Login(index: self.$index)
                }
                
                
                HStack(spacing: 15) {
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                
                
                HStack(spacing: 25) {
                    Button(action: {
                        //
                    }) {
                        Image("face")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .border(.white)                    }
                    
                    Button(action: {
                        //
                    }) {
                        Image("twit")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .border(.white)                    }

                    Button(action: {
                        //
                    }) {
                        Image("link")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .border(.white)
                        
                    }
                }
                .padding(.top, 30)
            }
            .padding(.vertical)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
        
    }
}



struct Login: View {
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .black : .gray)
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
                            .foregroundColor(.black)
                        
                        TextField("Email address", text: self.$email)
                            .colorInvert()
                    }
                    Divider()
                        .background(.black.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.black)
                        
                        SecureField("Password", text: self.$pass)
                            .colorInvert()
                    }
                    Divider()
                        .background(.black.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        //
                    }) {
                         Text("Forgot password?")
                            .foregroundColor(Color.black)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color.white)
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
                    .background(.black)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 35)
            .opacity(self.index == 0 ? 1 : 0)
         }
    }
}


struct SignUp : View {
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
                            .foregroundColor(self.index == 1 ? .black : .gray)
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
                            .foregroundColor(Color.black)
                        SecureField("Email address", text: self.$email)
                            .colorInvert()
                    }
                    Divider()
                        .background(Color.black.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.black)
                        SecureField("Password", text: self.$pass)
                            .colorInvert()
                    }
                    Divider()
                        .background(Color.black.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color.black)
                        SecureField("Repeat your password", text: self.$repass )
                            .colorInvert()
                    }
                    Divider()
                        .background(Color.black.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            
            .background(Color.white)
            .clipShape(CShapeFromRight())
            .contentShape(CShapeFromRight())
            
            .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: -5)
            
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            
            Button(action: {
                //
            }) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.black)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: -5)
            }
            
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}


struct CShapeFromLeft: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}

struct CShapeFromRight: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
