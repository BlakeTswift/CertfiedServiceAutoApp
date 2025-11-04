//
//  ContentView.swift
//  CertfiedServiceAutoApp
//
//  Created by Trytten, Blake - Student on 10/30/25.
//

import SwiftUI

struct ContentView: View {
    @State var SelectedDate = Date()
    @State var example = ""
    @Environment(itemsConditionalManager.self) var manager
    
    var item: itemsConditional
    var body: some View {
        
        
        
        
        
        
        ScrollView {
            Text("WindShield")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Rectangle()
                .frame(width: .infinity, height: 5)
                .foregroundStyle(.gray)
                
            
            ForEach(manager.items) { item in
                HStack {
                    Text("\(item.name): ")
                    Button {
                        if item.condition < 3 {
                            item.condition += 1
                        }else {
                            item.condition = 1
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 50, height: 30)
                            .foregroundStyle(conditionColor(condition: item.condition))
                        //line up condition
                            
                    }
                }
                .frame(maxWidth: 500, maxHeight: 50,alignment: .leading)
                .padding(20)
                
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.blue.opacity(0.5))
        }
    }
func conditionColor(condition: Int) -> Color {
    switch condition {
    case 1:
        return Color.red
    case 2:
        return Color.yellow
    case 3:
        return Color.green
    default :
        return Color.gray
    }
}

#Preview {
    @Previewable @State var mockManager = itemsConditionalManager()
    @Previewable @State var MockItem = itemsConditional(name: "Preview Task", condition: 0)
    ContentView(item: MockItem)
        .environment(mockManager)
}
