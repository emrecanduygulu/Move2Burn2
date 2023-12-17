//
//  Move2Burn2App.swift
//  Move2Burn2
//
//  Created by emre can duygulu on 17.12.2023.
//

import SwiftUI

@main
struct Move2BurnApp: App {
    @StateObject var manager = HealthManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
        }
    }
}
