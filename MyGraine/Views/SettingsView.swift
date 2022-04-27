//
//  SettingsView.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userInfo : UserInfo
    @State private var showSheet = false
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color.backGroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "person")
                        .foregroundColor(Color.buttonText)
                    TextField("Name" , text : $userInfo.name)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress) 
                        .disableAutocorrection(true)
                        .foregroundColor(Color.buttonBackground)
                        .background(Color.white)
                        .onChange(of: userInfo.name, perform: {_ in
                            FirebaseFunctions.addUserName(userInfo.name)
                        })
                    
                        
                }
                .padding()
                .padding(.top, 50)
                
                Toggle("Male - Female", isOn: $userInfo.gender)
                    .foregroundColor(Color.buttonBackground)
               
                HStack{
                    Text("\(Int(userInfo.height)/12)ft" + "\(Int(userInfo.height) - (Int(userInfo.height)/12)*12)in")
                        .foregroundColor(Color.buttonBackground)
                    Slider(value: $userInfo.height , in: 48...84)
                }
                HStack{
                    Text("\(Int(userInfo.weight))lbs")
                        .foregroundColor(Color.buttonBackground)
                    Slider(value: $userInfo.weight , in: 0...250)
                }
                Button("Sign Out"){
                    FirebaseFunctions.signOut(userInfo)
                }
                .frame(width: UIScreen.main.bounds.width-100)
                .padding()
                .background(Color.buttonBackground)
                .foregroundColor(Color.buttonText)
                .cornerRadius(30)
                .padding(.bottom, 50 )
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
