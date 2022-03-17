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
        VStack{
            Text("Hello World")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
