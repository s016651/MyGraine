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
            Rectangle().foregroundColor(Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Mygraine")
                    .bold()
                    .foregroundColor(Color.buttonBackground)
                    .font(.largeTitle)
                    .padding(100.0)
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
                
                Button("Forgot Password") {
                    FirebaseFunctions.forgotPassword(email: userInfo.email) { success in
                        
                    }
                }
                .frame(width: UIScreen.main.bounds.width-100)
                .padding()
                .background(Color.buttonBackground)
                .foregroundColor(Color.buttonText)
                .cornerRadius(30)
                
                Button("Sign In"){
                    FirebaseFunctions.login(email: userInfo.email, password: userInfo.password)
                    { success in
                        if success{
                            userInfo.loggedIn = true
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width-100)
                .padding()
                .background(Color.buttonBackground)
                .foregroundColor(Color.buttonText)
                .cornerRadius(30)
                Button("Create Account With Email"){
                    FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) {success in
                        if success{
                            userInfo.loggedIn = true
                        }
                    }
                }
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
