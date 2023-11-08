//
//  LoginView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-08.
//

import SwiftUI

struct LoginView: View {
    
    @State private var isLoginMode = false
    @State private var email = ""
    @State private var password = ""
    @State private var image: UIImage?
    @State private var loginStatusMessage = ""
    @State private var shouldShowImagePicker = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.indigo
                    .ignoresSafeArea()
                
                Circle()
                    .scale(1.8)
                    .foregroundColor(.white)
                    .opacity(0.15)
                
                Circle()
                    .scale(1.5)
                    .foregroundColor(.black)
                
                VStack(spacing: 16) {
                    Text(isLoginMode ? "Login" : "Create Username")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    
                    // image picker if isloginmode is false
                    
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .bold()
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .autocapitalization(.none)
                        .bold()
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    
                    Button {
                        //
                    } label: {
                        Text(isLoginMode ? "Login" : "Create Account")
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(width: 300, height: 50)
                            .background(.indigo)
                            .cornerRadius(10)
                            .padding(.top, 20)
                        
                    }
                    HStack {
                        Text(isLoginMode ? "Don't have an account yet?" : "Have an account?")
                            .foregroundColor(.white)
                        Button {
                            isLoginMode.toggle()
                        } label: {
                            Text(isLoginMode ? "Create Account" : "Login")
                                .foregroundColor(.indigo)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
