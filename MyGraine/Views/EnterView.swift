//
//  EnterView.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/17/22.
//

import SwiftUI

struct EnterView: View {
    var closedRange = Calendar.current.date(byAdding: . year, value: -1, to: Date())!
    @EnvironmentObject var migraineInfo : MigraineInfo
    
    func formatDate() -> String{
        let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: migraineInfo.date)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        let day = components.day ?? 0
        let month = components.month ?? 0
        let year = components.year ?? 0
        
        
        return "\(day)-\(month)-\(year) (\(hour):\(minute))"
    }
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color.backGroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("New Migraine")
                    .foregroundColor(Color.buttonText)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Form{
                    Section(header:Text("Enter Migraine Date")){
                        DatePicker("Date:", selection: $migraineInfo.date , in: closedRange...Date())
                    }
                    Section(header:Text("Result")){
                        Text("\(migraineInfo.date)")
                    }
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
