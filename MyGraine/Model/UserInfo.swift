//
//  UserInfo.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI



class UserInfo : ObservableObject {
    var name : String
    var email : String
    var password : String
    @Published var loggedIn : Bool
    @Published var gender: Bool = false
    @Published var height : Float
    @Published var weight : Float
    @Published var migraineList : [MigraineInfo] = []
    
    init(name : String = "" , email : String = "" , password : String = "", loggedIn : Bool = false, height: Float = 0, weight: Float = 0) {
        self.name = name
        self.email = email
        self.password = password
        self.loggedIn = loggedIn
        self.height = height
        self.weight = weight
        
        
        FirebaseFunctions.getUserInfo(self)
        
        
        
    }
}
