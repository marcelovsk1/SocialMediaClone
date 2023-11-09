//
//  ProfileView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var loginViewModel: LoginViewModel
    
    @State private var showLogOutOptions = false
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showLogOutOptions.toggle()
                    } label: {
                        Image(systemName: "gear")
                            .font(.system(size: 24))
                            .bold()
                            .foregroundColor(.indigo)
                    }
                }
            }
            .actionSheet(isPresented: $showLogOutOptions) {
                ActionSheet(title: Text("Settings"),
                message: Text("What do you want to do?"),
                            buttons: [.destructive(Text("Sign out"),
                                                   action: {
                    loginViewModel.handleSignOut()
                }), .cancel()
                            ])
            }
        }
    }
}

#Preview {
    ProfileView(loginViewModel: LoginViewModel())
}
