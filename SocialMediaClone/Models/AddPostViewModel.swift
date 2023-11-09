//
//  AddPostViewModel.swift
//  SocialMediaClone
//
//  Created by Marcelo Amaral Alves on 2023-11-09.
//

import Foundation
import Firebase

class AddPostViewModel {
    func addPost(name: String, postTitle: String, image: UIImage?, date: Date) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let ref = Firestore.firestore().collection("posts").document()
        ref.setData([
            "name": name,
            "title": postTitle,
            "id": ref.documentID as String,
            "timestamp": date,
            "useruid": uid
        ])
    }
    
}
