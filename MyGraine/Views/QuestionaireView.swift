//
//  QuestionaireView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 3/31/22.
//

import SwiftUI

struct QuestionaireView: View {
    //    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    @State var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationView{
            HomeView()
            
        }.fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}


//Onboarding

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    @EnvironmentObject var userInfo : UserInfo
    var body: some View{
        TabView{
        WelcomeView()
        NameView()
        GenderView()
        HeightView()
        WeightView()
            
            
            
            
            YesNoView(title: ""
                      , subtitle1: ""
                      , subtitle2: ""
                      , showsDismissButton: true
                      , shouldShowOnboarding: $shouldShowOnboarding)
            
        }.tabViewStyle(PageTabViewStyle())
    }
}
struct GenderView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        
        Picker(selection: $userInfo.gender, label: Text("Gender"), content: {
            ForEach(Gender.allCases){ ti in
                Text(ti.rawValue)
            }
        })
    }
}
struct WeightView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        TextField("Weight", value: $userInfo.weight, formatter: NumberFormatter())
            .padding()
    }
    
}
struct HeightView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        VStack{
            HStack{
            Text("Height")
                .bold()
                .font(.system(size: 42))
                .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            Text("Please Enter In Your Current Height In Inches")
                
                
                
            Spacer()
            TextField("Height", value: $userInfo.height, formatter: NumberFormatter())
            Spacer()
            
        }
   
        
        
    }
    
}
struct NameView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
     
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
    
}
struct WelcomeView: View{
    var body : some View{
        Text("Hello. Welcome to MyGraine! Please Begin By Entering The Following Basic Information In order To Maximize Our Apps Accuracy!")
    }
}




struct YesNoView: View {
    let title: String
    let subtitle1: String
    let subtitle2: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    @EnvironmentObject var userInfo : UserInfo
    
    
    
    
    
    var body: some View{
        VStack{
            Spacer()
            Text(title)
                .font(.system(size: 42))
                .padding()
                .multilineTextAlignment(.center)
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(subtitle1)
                    .background(Color.white)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
                    .foregroundColor(Color(.secondaryLabel))
                    .padding()
                    .multilineTextAlignment(.center)
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(subtitle2)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
                    .foregroundColor(Color(.secondaryLabel))
                    .padding()
                    .multilineTextAlignment(.center)
                
                
            })
            
            
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                } , label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
            
            
            Spacer()
        }.ignoresSafeArea(.all)
    }
}

struct QuestionaireView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionaireView()
    }
}
