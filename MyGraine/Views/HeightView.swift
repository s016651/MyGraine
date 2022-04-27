//
//  HeightView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

func formatHeight() {
    
}
struct HeightView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        VStack{
            Text("Please Enter Your Height")
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(Color.buttonBackground)
            HStack{
                Text("\(Int(userInfo.height)/12)ft" + "\(Int(userInfo.height) - (Int(userInfo.height)/12)*12)in")
                    .foregroundColor(Color.buttonBackground)
                Slider(value: $userInfo.height , in: 48...84)
            }
                
                .background(Color.white)
                .ignoresSafeArea(.all)
        }
    }
}
