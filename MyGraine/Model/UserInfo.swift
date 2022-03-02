//
//  UserInfo.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

class UserInfo : ObservableObject{
    var name : String
    var email : String
    var password : String
    @Published var loggedIn : Bool
    
    init(name : String = "" , email : String = "" , password : String = "", loggedIn : Bool = false) {
        self.name = name
        self.email = email
        self.password = password
        self.loggedIn = loggedIn
        
        FirebaseFunctions.getUserInfo(self)
        
        
        
    }
}
