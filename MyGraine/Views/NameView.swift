//
//  NameView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct NameView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        VStack{
            Text("Please Enter Your Name")
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(Color.buttonBackground)
                .font(.system(size: 30))
            TextField("Name" , text : $userInfo.name)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .foregroundColor(Color.buttonBackground)
                .background(Color.white)
                .onChange(of: userInfo.name, perform: {_ in
                    FirebaseFunctions.addUserName(userInfo.name)
                })
                
                .background(Color.backGroundColor)
                .ignoresSafeArea(.all)
        }
    }
    
}
