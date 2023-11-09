//
//  ProfileView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var loginViewModel: LoginViewModel
    
    var body: some View {
        Text("OLA")
    }
}

#Preview {
    ProfileView(loginViewModel: LoginViewModel())
}
