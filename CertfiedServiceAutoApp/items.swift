//
//  items.swift
//  CertfiedServiceAutoApp
//
//  Created by Trytten, Blake - Student on 11/3/25.
//

import Foundation
import SwiftUI

@Observable
class itemsConditional: Identifiable {
    let id = UUID()
    var name: String = ""
    var condition: Int = 0
    
    init(name: String, condition: Int) {
        self.name = name
        self.condition = condition
    }
    
    
    
}
@Observable
class  itemsConditionalManager {
    var items: [itemsConditional] = [
        //Wind Shields
        itemsConditional(name: "RF", condition: 0),
        itemsConditional(name: "LF", condition: 0),
        itemsConditional(name: "Rear WindShield", condition: 0),
        itemsConditional(name: "WindShield Condition", condition: 0),
        
        //Battery
        itemsConditional(name: "Battery Health", condition: 0),
        itemsConditional(name: "Battery Cabels / Conections", condition: 0),
        
        //Addition Checks
        itemsConditional(name: "Engine Cooling System", condition: 0),
        itemsConditional(name: "Belts:Engine / Power Steering / Vs-drive", condition: 0),
        itemsConditional(name: "Hoses:Engine / Power Steering / HVAC", condition: 0),
        itemsConditional(name: "Engine air filter", condition: 0),
        
    ]
    
    
    
}
