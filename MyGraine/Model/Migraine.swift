//
//  Migraine.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 3/15/22.
//


import Foundation

enum Scale: String, CaseIterable, Identifiable{
    case one: "1"
    case two: "2"
    case three: "3"
    case four: "4"
    case five: "5"
    case six: "6"
    case seven: "7"
    case eight: "8"
    case nine: "9"
    case ten: "10"
    
    var id : String{self.rawValue}
}

