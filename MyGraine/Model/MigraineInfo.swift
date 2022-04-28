//
//  MigraineInfo.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/25/22.
//

import SwiftUI

class MigraineInfo : ObservableObject {
    @Published var date : Date
    @Published var stressLevel : Float
    @Published var sleep : Float
    @Published var hydration : Float
    @Published var duration : Date
    @Published var hunger : Bool
    @Published var cramps : Bool
    
    init(migraineInfo: MigraineInfo){
        self.date = migraineInfo.date
        self.stressLevel = migraineInfo.stressLevel
        self.sleep = migraineInfo.sleep
        self.hydration = migraineInfo.hydration
        self.duration = migraineInfo.duration
        self.hunger = migraineInfo.hunger
        self.cramps = migraineInfo.cramps
    }
    
    init(date : Date = Date() , sleep : Float = 0.0 , hydration : Float = 0 , stressLevel: Float = 0.0,  duration : Date = Date() , hunger : Bool = false, cramps :Bool = false) {
        self.date = date
        self.stressLevel = stressLevel
        self.sleep = sleep
        self.hydration = hydration
        self.duration = duration
        self.cramps = cramps
        self.hunger = hunger
        
    }
    
    
}

