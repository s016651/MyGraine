//
//  WelcomeView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct WelcomeView: View{
    var body : some View{
        VStack{
            Spacer()
            Text("Hello. Welcome to MyGraine! Please Begin By Entering The Following Basic Information In Order To Maximize Our Apps Accuracy!")
                .bold()
                .font(.system(size: 40))
                .foregroundColor(.pink)
                .padding()
            
            Spacer()
        }  .background(Color.backGroundColor)
        .ignoresSafeArea(.all)
        
    }
}
