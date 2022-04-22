//
//  HeightView.swift
//  MyGraine
//
//  Created by Nathan Cohen (student LM) on 4/22/22.
//

import SwiftUI

struct HeightView: View{
    @EnvironmentObject var userInfo : UserInfo
    var body : some View{
        VStack{
            HStack{
                Text("Height")
                    .bold()
                    .font(.system(size: 42))
                    .multilineTextAlignment(.leading)
                
            }
           
            
            HStack{
                Text("Please Enter In Your Current Height In Inches:")
                
                
                
                
                TextField("Height", value: $userInfo.height, formatter: NumberFormatter())
                Spacer()
            }
            
        }
        
        
        .background(Color.backGroundColor)
        .ignoresSafeArea(.all)
    }
    
}
