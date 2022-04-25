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
    @Published var hunger : Bool = false
    @Published var cramps : Bool = false
    init(date : Date = Date() , sleep : Float = 0.0 , hydration : Float = 0 , stressLevel: Float = 0.0,  duration : Date = Date()) {
        self.date = date
        self.stressLevel = stressLevel
        self.sleep = sleep
        self.hydration = hydration
        self.duration = duration
        
    }
}

class MigraineVariables : ObservableObject{
    @Published var date : Date
    @Published var stressLevel : Float
    @Published var sleep : Float
    @Published var hydration : Float
    @Published var duration : Date
    @Published var hunger : Bool = false
    @Published var cramps : Bool = false
    init(date : Date = Date() , sleep : Float = 0.0 , hydration : Float = 0 , stressLevel: Float = 0.0,  duration : Date = Date()) {
        self.date = date
        self.stressLevel = stressLevel
        self.sleep = sleep
        self.hydration = hydration
        self.duration = duration
        
    }
}
