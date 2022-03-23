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
                .tabItem{
                    Image(systemName: "calendar.circle")
                    Text("Calendar")
                }
            EnterView()
                .tabItem{
                    Image(systemName: "pencil.circle")
                    Text("New Migraine")
                }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
