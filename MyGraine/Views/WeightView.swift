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
        VStack{
            Text("Please Enter Your Weight in lbs")
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(Color.buttonBackground)
            HStack{
                Text("\(Int(userInfo.weight))lbs")
                    .foregroundColor(Color.buttonBackground)
                Slider(value: $userInfo.weight , in: 0...250)
            }
                
                .background(Color.white)
                .ignoresSafeArea(.all)
        }
    }
    
}
