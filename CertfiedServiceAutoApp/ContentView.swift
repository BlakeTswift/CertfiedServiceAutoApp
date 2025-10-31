//
//  ContentView.swift
//  CertfiedServiceAutoApp
//
//  Created by Trytten, Blake - Student on 10/30/25.
//

import SwiftUI
struct ContentView: View {
    @State var Scratches: [Int] = [0,0]
    @State var ResivedData: [String] = [""]
    @State var RFcondition: Int = 0
    @State var InformationOnCar: [String] =
    ["",""]
    
    @State var SelectedDate = Date()
    
    var body: some View {
        Text(InformationOnCar.description)
            .font(.largeTitle)
        VStack {
            DataEntryCard(InformationOnCar: $InformationOnCar, TextName: "Name")
            HStack(spacing: 20){
                DatePicker("Date:", selection: $SelectedDate,displayedComponents: .date)
                    .fixedSize()
                    .datePickerStyle(.compact)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                HStack {
                    Text("RF")
                        .font(.largeTitle)
                        .bold()
                    Button{
                        RFcondition += 1
                        if RFcondition > 3 {
                            RFcondition = 0
                        }
                    }
                    label:{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 50, height: 50)
                            .foregroundStyle(Condition(Rfconditon: RFcondition))
                    }
                }
                .padding(10)
                .border(Color.black)
                .frame(maxWidth: 500, maxHeight: 75)
                
            }
        }
    }
    func Condition(Rfconditon: Int) -> Color {
        
        
        if Rfconditon == 1 {
            return .green
        }
        if Rfconditon == 2 {
            return .yellow
        }
        if Rfconditon == 3 {
            return .red
        }else{
            return .gray
        }
    }
}
func dataEntryCard(want: String) {
    @Binding var ResivedData: [String]
    var data: String
    
//    ForEach (0..<ResivedData) {data in
//        HStack {
//            Text(want)
//            TextField(want, text: $data)
//                .padding()
//        }
//    }
    
}
#Preview {
    ContentView()
}
