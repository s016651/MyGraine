//
//  LoginView.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userInfo : UserInfo
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color.backGround)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "mail")
                    TextField("Email", text: $userInfo.email)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                }
                .padding()
                
                HStack{
                    Image(systemName: "lock")
                    SecureField("Password", text: $userInfo.password)
                    
                }
                .padding()
                
                Button(action: {}, label:{
                    Text("Forgot Password")
                })
                    .foregroundColor(Color.buttonBackground)
                .padding()
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign In")
                })
                    .frame(width: UIScreen.main.bounds.width-100)
                    .padding()
                    .background(Color.buttonBackground)
                    .foregroundColor(Color.buttonText)
                    .cornerRadius(30)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Create Account With Email")
                })
                    .frame(width: UIScreen.main.bounds.width-100)
                    .padding()
                    .background(Color.buttonBackground)
                    .foregroundColor(Color.buttonText)
                    .cornerRadius(30)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
