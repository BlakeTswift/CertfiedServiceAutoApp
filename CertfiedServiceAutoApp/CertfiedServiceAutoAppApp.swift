//
//  CertfiedServiceAutoAppApp.swift
//  CertfiedServiceAutoApp
//
//  Created by Trytten, Blake - Student on 10/30/25.
//

import SwiftUI

@main
struct CertfiedServiceAutoAppApp: App {
    var body: some Scene {
        @State var manager = itemsConditionalManager()
        WindowGroup {
            
            @Previewable @State var MockItem = itemsConditional(name: "Preview Task", condition: 0)
            ContentView(item: MockItem)
                .environment(manager)
        }
    }
}
