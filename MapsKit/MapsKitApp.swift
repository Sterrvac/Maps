//
//  MapsKitApp.swift
//  MapsKit
//
//  Created by macbook on 22.03.2023.
//

import SwiftUI

@main
struct MapsKitApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
