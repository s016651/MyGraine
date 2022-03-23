//
//  LazyVGridPrac.swift
//  calender view
//
//  Created by Alexander Hecht (student LM) on 3/15/22.
//

import SwiftUI

struct Calender: View {
    let data = Array(1...31).map { " \($0)"}
    
    let layout = [
        GridItem(.adaptive(minimum: 30))
    ]
    
    var body: some View {
        //January
        ScrollView{
            VStack{
                Text("January")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            Button("Click Me", action: {
                                HomeView()
                            })
                                   
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //February
            VStack{
                Text("February")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //March
            VStack{
                Text("March")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //April
            VStack{
                Text("April")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //May
            VStack{
                Text("May")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //June
            VStack{
                Text("June")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height:56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //July
            VStack{
                Text("July")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //August
            VStack{
                Text("August")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //September
            VStack{
                Text("September")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            //October
            
            VStack{
                Text("October")
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        VStack{
                            
                            Capsule()
                                .fill(Color.blue)
                                .frame(height: 56)
                            
                            Text(item)
                        }
                    }
                }
                .padding(.horizontal)
                
            }
        }
        
        
    }
    
    struct Calender_Previews: PreviewProvider {
        static var previews: some View {
            Calender()
        }
    }
}
