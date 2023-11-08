//
//  ContentView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-08.
//

import SwiftUI

struct MainView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        LoginView(loginViewModel: loginViewModel)
    }
}

#Preview {
    MainView()
}
