//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Denny Arfansyah on 06/08/23.
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
