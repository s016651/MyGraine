//
//  QuestionaireView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 3/31/22.
//

import SwiftUI

struct QuestionaireView: View {
     //@AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
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
        ZStack{
          
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
