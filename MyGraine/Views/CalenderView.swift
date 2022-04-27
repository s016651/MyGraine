//
//  LazyVGridPrac.swift
//  calender view
//
//  Created by Alexander Hecht (student LM) on 3/15/22.
//

import SwiftUI
import Foundation

let dateFormatter = DateFormatter()


func formatDate(date : Date) -> String{
    dateFormatter.dateFormat = "MMM d, YYYY at hh:mm"
    return dateFormatter.string(from: date)
}

struct CalenderView: View {
    //@EnvironmentObject var migraineInfo : MigraineInfo
    
    @EnvironmentObject var userInfo : UserInfo
    
    var body: some View {
        VStack{
            Text("Migraine History")
                .foregroundColor(Color.buttonBackground)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
           
            List(userInfo.migraineList.indices, id: \.self){ index in
                
                VStack{
                    Text("Start Date : " + formatDate(date: userInfo.migraineList[index].date))
                        .foregroundColor(Color.buttonBackground)
                        .multilineTextAlignment(.leading)
                    Text("End date : " + formatDate(date: userInfo.migraineList[index].duration))
                        .foregroundColor(Color.buttonBackground)
                        .multilineTextAlignment(.leading)
                    Text("Stress Level : \(Int(userInfo.migraineList[index].stressLevel))")
                        .foregroundColor(Color.buttonBackground)
                        .multilineTextAlignment(.leading)
                    Text("Hours Slept : \(Int(userInfo.migraineList[index].sleep))")
                        .foregroundColor(Color.buttonBackground)
                        .multilineTextAlignment(.leading)
                    Text("Water Drank in oz : \(Int(userInfo.migraineList[index].hydration))")
                        .foregroundColor(Color.buttonBackground)
                        .multilineTextAlignment(.leading)
                    if userInfo.migraineList[index].hunger{
                        Text("Have you been keeping up with meals : Yes" )
                            .foregroundColor(Color.buttonBackground)
                            .multilineTextAlignment(.leading)
                    }
                    else{
                        Text("Have you been keeping up with meals : No" )
                            .foregroundColor(Color.buttonBackground)
                            .multilineTextAlignment(.leading)
                    }
                    if userInfo.gender {
                        if userInfo.migraineList[index].cramps {
                            Text("Period Cramps Recently : Yes")
                                .foregroundColor(Color.buttonBackground)
                                .multilineTextAlignment(.leading)
                        }
                        else{
                            Text("Period Cramps Recently : No")
                                .foregroundColor(Color.buttonBackground)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    
                    
                }
                
                
            }
            NavigationView{
                NavigationLink(destination: HistoryView(), label:{
                    learnView()
                })
            }
            
            
        }
        
    }
    struct learnView : View{
        var body: some View {
            Text("Learn More")
                .foregroundColor(Color.buttonBackground)
                .multilineTextAlignment(.leading)
            
        }
    }
    
    struct Calender_Previews: PreviewProvider {
        static var previews: some View {
            CalenderView()
        }
    }
}
