//
//  FirebaseFunctions.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import Foundation
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore
struct FirebaseFunctions{
    
    static func getUserInfo ( _ userInfo : UserInfo){
        Auth.auth().addStateDidChangeListener{_, user in
            guard let user = user else {return}
                
            userInfo.email = user.email ?? ""
            userInfo.loggedIn = true
            let uid = user.uid
            
            Firestore.firestore().collection("users").document(uid).getDocument{document, _ in
                guard let document = document else {return}
                
                
               //getting information from the user's document
              
                userInfo.name = document.get ("name") as? String ?? ""
                
                
               
            }
        }
    }
    
    
    static func signOut( _ userInfo: UserInfo){
        try? Auth.auth().signOut()
        userInfo.loggedIn = false
    }
    
    
    static func addUserName ( _ name: String){
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        Firestore.firestore()
            .collection("users")
            .document(uid)
            .setData(["name" : name], merge:true)
       
    }
    static func uploadPicture( _ image : UIImage,
                               completion:@escaping (Bool) -> ()){
        
        //get the user's id The image will be stored by this uid
        
        guard let uid = Auth.auth().currentUser?.uid else {
            completion(false)
            return
        }
        
        //get a reference to the storage singleton
        let storage = Storage.storage().reference().child("user/\(uid)")
        
        
        //convert the image to a form that can bes tored in storage
        guard let imageData = image.jpegData(compressionQuality: 0.50)
        else{
            completion(false)
            return
        }
        
        storage.putData(imageData, metadata: StorageMetadata()) { meta, error in
            if let _ = meta{
                storage.downloadURL { url, error in
                    guard let downloadURL = url else {return}
                    Firestore.firestore()
                        .collection("users")
                        .document(uid)
                        .setData(["image" : downloadURL.absoluteString], merge:true)
                }
            }
        }
    }
    
    static func login(email : String, password : String, completion : @escaping (Bool) -> ()){
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if let _ = user {
                print("logged in")
                completion(true)
                return
            }
            else{
                print(error.debugDescription)
                completion(false)
                return
            }
        }
    }
    static func authenticate(email : String, password: String, completion : @escaping (Bool) -> ()){
        
        
        Auth.auth().createUser(withEmail: email, password: password){user, error in
            if let _ = user {
                print("user created")
                completion(true)
                return
            }
            else{
                print(error.debugDescription)
                completion(false)
                return
            }
            
        }
    }
    
    static func forgotPassword(email: String, completion: @escaping (Bool) -> ()){
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let _ = error{
                completion(false)
                return
            }
            else{
                completion(true)
                return
            }
        }
    }
}
