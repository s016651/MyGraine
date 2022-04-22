//
//  GenderView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct GenderView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        
        Picker(selection: $userInfo.gender, label: Text("Gender"), content: {
            ForEach(Gender.allCases){ ti in
                Text(ti.rawValue)
            }
        })
    }
}
