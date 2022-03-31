//
//  MigraineInfo.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/25/22.
//

import SwiftUI

class MigraineInfo : ObservableObject {
    var day : Int
    var month : Int
    var stress : String
    var hydration : String
    
    init(day :Int = 0 , month : Int = 0 , stress : String = "" , hydration : String = "") {
        self.day = day
        self.month = month
        self.stress = stress
        self.hydration = hydration
        
        
        
    }
}

