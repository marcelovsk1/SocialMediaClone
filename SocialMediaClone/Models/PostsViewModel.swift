//
//  PostsViewModel.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-10.
//

import Foundation
import UIKit

class PostsViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchAllPosts() {
        FirebaseManager.shared.firestore
            .collection("posts")
            .getDocuments(completion: )
    }
}
