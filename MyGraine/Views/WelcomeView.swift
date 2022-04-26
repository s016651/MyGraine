//
//  WelcomeView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct WelcomeView: View{
    var body : some View{
        ZStack{
            Rectangle().foregroundColor(Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Hello. Welcome to MyGraine! Please Begin By Entering The Following Basic Information In Order To Maximize Our App's Accuracy!")
                    .font(.system(size: 40))
                    .foregroundColor(Color.buttonBackground)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
            }
        }
    }
}
