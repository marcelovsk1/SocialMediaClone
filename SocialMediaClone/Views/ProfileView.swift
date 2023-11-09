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
        NavigationView {
            VStack {
                
            }
        }
    }
}

#Preview {
    ProfileView(loginViewModel: LoginViewModel())
}
