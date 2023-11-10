//
//  ProfileView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import SwiftUI
import FirebaseAuth
import FirebaseStorage
import Kingfisher

struct ProfilePostComponent: View {
    let post: Post
    
    var body: some View {
        VStack {
            Divider()
                .padding(.horizontal)
            
            HStack {
                Text(post.name)
                    .padding(.vertical, 2)
                    .padding(.horizontal)
                    .foregroundColor(.indigo)
                
                Spacer()
            }
            
            HStack {
                Text(post.postTitle)
                    .bold()
                
                Spacer()
                Text(post.timestamp.formatted())
                    .font(.caption2)
            }
            .padding()
            
            if let url = URL(string: post.imageURL) {
                KFImage(url)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 200)
            } else {
                ProgressView()
            }
        }
    }
}


struct ProfileView: View {
    @ObservedObject var loginViewModel: LoginViewModel
    @StateObject var profileViewModel = ProfileViewModel()
    
    @State private var showLogOutOptions = false
    @State private var showAddPostView = false
    @State private var profileImage: UIImage?
    @State private var isLoadingProfileImage = false
    @State private var isRefreshing = false
    @State private var isInitialized = false
    
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
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddPostView.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                            .foregroundColor(.indigo)
                    }
                }
            }
            .sheet(isPresented: $showAddPostView)  {
                AddPostView()
            }
        }
    }
}

#Preview {
    ProfileView(loginViewModel: LoginViewModel())
}
