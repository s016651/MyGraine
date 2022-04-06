//
//  LazyVGridPrac.swift
//  calender view
//
//  Created by Alexander Hecht (student LM) on 3/15/22.
//

import SwiftUI

struct CalenderView: View {
    struct month{
        let name : String
        let numberOfDays : Int
    }
    let data = Array(1...31).map { " \($0)"}
    let month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    let layout = [
        GridItem(.adaptive(minimum: 30))
    ]
    
    var body: some View {
        NavigationView{
            //January
            ScrollView{
                ForEach(0 ..< 12) { item in
                    VStack{
                        
                        Text(month[item])
                        LazyVGrid(columns: layout, spacing: 20) {
                            ForEach(data, id: \.self) { item in
                                VStack{
                                    NavigationLink( destination: EnterView(), label: {Text(item)})
                                    
                                    Capsule()
                                        .fill(Color.blue)
                                        .frame(height: 56)
                                    
                                    
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                    }
                }
            }
            
            
        }
        
        
    }

struct Calender_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
}
