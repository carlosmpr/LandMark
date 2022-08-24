//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Carlos Polanco on 8/23/22.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
