//
//  ProfileViewModel.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-10.
//

import Foundation
import Firebase

class ProfileViewModel: ObservableObject {
    @Published var post = [Post]()
    
    init() {
        getUserPosts()
        
    }
    
    func getUserPosts() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        FirebaseManager.shared.firestore
            .collection("posts")
            .whereField("useruid", isEqualTo: uid)
            .getDocuments { documentsSnapshot, error in
                if let error = error {
                    print("Failed to fetch posts \(error)")
                    return
                }
                
                
            }
    }
}
