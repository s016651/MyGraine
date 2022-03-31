//
//  EnterView.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/17/22.
//

import SwiftUI

struct EnterView: View {
    
    @EnvironmentObject var migraineInfo : MigraineInfo
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color.backGroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("New Migraine")
                    .foregroundColor(Color.buttonText)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                
                HStack{
                    
                }
            }
        }
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterView()
    }
}
