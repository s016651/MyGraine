//
//  WeightView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct WeightView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        TextField("Weight", value: $userInfo.weight, formatter: NumberFormatter())
            .padding()
    }
    
}
