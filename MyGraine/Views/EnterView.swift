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
    @EnvironmentObject var userInfo : UserInfo
    var count : Int = -1
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
                    .foregroundColor(Color.buttonBackground)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Form{
                    Section(header:Text("Enter Migraine Date")){
                        DatePicker("Date:", selection: $migraineInfo.date , in: closedRange...Date())
                    }
                    Section(header:Text("Enter Migraine End Date")){
                        DatePicker("Date:", selection: $migraineInfo.duration , in: migraineInfo.date...)
                    }
                    Section(header:Text("Enter Your Stress Level From 0 - 10")){
                        HStack{
                            Text("\(Int(migraineInfo.stressLevel))")
                            Slider(value: $migraineInfo.stressLevel , in: 0...10)
                        }
                        
                    }
                    Section(header:Text("Enter the Amount of Hours you Slept Prior to Your Migraine")){
                        HStack{
                            Text("\(Int(migraineInfo.sleep))")
                            Slider(value: $migraineInfo.sleep , in: 0...16)
                        }
                        
                    }
                    Section(header:Text("Enter the Amount of Water You have drank today in oz")){
                        VStack{
                            Text("Average Cup of Water = 8 oz")
                            HStack{
                                Text("\(Int(migraineInfo.hydration))")
                                Slider(value: $migraineInfo.hydration , in: 0...200)
                                
                            }
                        }
                    }
                    Section(header: Text("Have You Been Keeping Up With Your Meals")){
                        Toggle("Yes", isOn: $migraineInfo.hunger)
                        
                    }
                    if (userInfo.gender){
                        Section(header: Text("Have You Been Experiencing Period Cramps Recently")){
                            Toggle("Yes", isOn: $migraineInfo.cramps)
                            
                        }
                    }
                    Section(){
                        Button( action: { userInfo.migraineList.append(migraineInfo)
                            
                        }, label:
                                    {
                            Text("Submit")
                        }).frame(width: UIScreen.main.bounds.width-100, height: 30)
                            .padding()
                            .background(Color.buttonBackground)
                            .foregroundColor(Color.buttonText)
                            .cornerRadius(30)
                            .padding(.bottom, 50 )
                        
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
