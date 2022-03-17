//
//  HomeView.swift
//  MyGraine
//
//  Created by Alexander Hecht (student LM) on 3/2/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var userInfo : UserInfo
    var body: some View {
        TabView{
            SettingsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            CalenderView()
            EnterView()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
