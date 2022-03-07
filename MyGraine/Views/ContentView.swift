//
//  ContentView.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userInfo : UserInfo
    var body: some View {
        Group{
            if userInfo.loggedIn{
                HomeView()
            }
            else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
