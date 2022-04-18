//
//  MigraineInfo.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/25/22.
//

import SwiftUI

class MigraineInfo : ObservableObject {
    @Published var date : Date
    var stress : String
    var hydration : String
    
    init(date : Date = Date() , stress : String = "" , hydration : String = "") {
        self.date = date
        self.stress = stress
        self.hydration = hydration
        
        
        
    }
}

