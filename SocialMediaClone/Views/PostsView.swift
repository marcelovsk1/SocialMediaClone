//
//  PostsView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import SwiftUI

struct PostComponent: View {
    let post: Post
    var postsViewModel = PostsViewModel()
    @State private var profileImage: UIImage?
    @State private var isLoadingImage = false
    
    var body: some View {
        
    }
}

struct PostsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PostsView()
}
