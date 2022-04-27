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
        VStack{
            Text("Please Enter your Gender")
            .bold()
            .multilineTextAlignment(.center)
            .foregroundColor(Color.buttonBackground)
            .font(.system(size: 30))
            Toggle("Male - Female", isOn: $userInfo.gender)                    .foregroundColor(Color.buttonBackground)
        }

        
    }
}
