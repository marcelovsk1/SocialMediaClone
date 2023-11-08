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
        Text("hello")
    }
}

#Preview {
    LoginView()
}
