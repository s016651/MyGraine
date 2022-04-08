//
//  UserInfo.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

enum Gender: String,  Identifiable, CaseIterable{
    case Male
    case Female
    
    var id : String{self.rawValue}

    
}


class UserInfo : ObservableObject {
    var name : String
    var email : String
    var password : String
    @Published var loggedIn : Bool
    @Published var gender: Gender = .Male
    @Published var height : Int = 0
    @Published var weight : Int = 0
    
    init(name : String = "" , email : String = "" , password : String = "", loggedIn : Bool = false) {
        self.name = name
        self.email = email
        self.password = password
        self.loggedIn = loggedIn
        
        FirebaseFunctions.getUserInfo(self)
        
        
        
    }
}
