//
//  ContentView.swift
//  Move2Burn2
//
//  Created by emre can duygulu on 17.12.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let progress: Double = 0.75
    
    var body: some View {
    
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 10), count: 2)) {
                GoalCardView(progress: progress, symbol: Image(systemName: "figure.run"), title: "Running", subtitle: "Goal")
                    .frame(width: 100, height: 150)
                
                GoalCardView(progress: progress, symbol: Image(systemName: "flame.circle.fill"), title: "Calories", subtitle: "Goal")
                    .frame(width: 100, height: 150)
            }
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                CardView(symbol: Image(systemName:"heart.fill"), title: "Heart Rate", subtitle: "145")
                
                CardView(symbol: Image(systemName:"lungs.fill"), title: "VO2 Max", subtitle: "42")
                
            }
            .padding(.horizontal)
        }
    }
}
#Preview {
    ContentView()
}
