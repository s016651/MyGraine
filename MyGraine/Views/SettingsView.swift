//
//  SettingsView.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

struct SettingsView: View {
   // @EnvironmentObject var userInfo : UserInfo
    @StateObject var userInfo : UserInfo = UserInfo()
    @State private var showSheet = false
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color.buttonBackground)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "person")
                        .foregroundColor(Color.buttonText)
                    TextField("Name" , text : $userInfo.name)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress) 
                        .disableAutocorrection(true)
                        .foregroundColor(Color.buttonText)
                        .onChange(of: userInfo.name, perform: {_ in
                            FirebaseFunctions.addUserName(userInfo.name)
                        })
                }
                .padding()
                .padding(.top, 50)
                
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
        SettingsView(userInfo: UserInfo())
    }
}
