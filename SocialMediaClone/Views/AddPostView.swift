//
//  AddPostView.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import SwiftUI

struct AddPostView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var postTitle = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false
    @State private var errorMessage = ""
    
    var addPostViewModel = AddPostViewModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
                TextField("Share your thoughts...", text: $postTitle)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 25)
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(image: $selectedImage)
        }
    }
}

#Preview {
    AddPostView()
}
