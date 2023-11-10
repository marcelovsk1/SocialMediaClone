//
//  SearchView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-10.
//

import SwiftUI

struct SearchView: View {
    @State private var text = ""
    @ObservedObject var postsViewModel: PostsViewModel
    
    var body: some View {
        VStack {
            HStack {
                withAnimation(.default) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                        
                        TextField("Search", text: $text)
                    }
                    .padding(.horizontal, 8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    
                    
                }
                
                if !text.isEmpty {
                    Button {
                        text = ""
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.indigo)
                    }
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                }
            }
            .transition(.move(edge: .top))
        }
        .padding()
    }
}

#Preview {
    SearchView(postsViewModel: PostsViewModel())
}
