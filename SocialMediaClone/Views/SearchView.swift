//
//  SearchView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-10.
//

import SwiftUI

struct SearchView: View {
    @State private var text = ""
    @ObservableObject var postsViewModel: PostsViewModel
    
    var body: some View {
        VStack {
            HStack {
                
            }
            .transition(.move(edge: .top))
        }
        .padding()
    }
}

#Preview {
    SearchView(postsViewModel: PostsViewModel())
}
