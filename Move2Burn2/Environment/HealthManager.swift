//
//  HealthManager.swift
//  Move2Burn2
//
//  Created by emre can duygulu on 17.12.2023.
//

import Foundation
import HealthKit

extension Date {
    static var startOfDay: Date {
        Calendar.current.startOfDay(for: Date())
    }
}
class HealthManager: ObservableObject {
    
    let healthStore = HKHealthStore()
    
    init() {
        let calories = HKQuantityType(.activeEnergyBurned)
        
        let healthTypes: Set = [calories]
        
        Task {
            do {
               try await healthStore.requestAuthorization(toShare:[], read:healthTypes)
            } catch {
                print("error fetching health data")
            }
        }
    }
    
    func fetchTodaysCalories() {
        let calories = HKQuantityType(.activeEnergyBurned)
        let predicate = HKQuery.predicateForSamples(withStart: .startOfDay, end: Date())
        let query = HKStatisticsQuery(quantityType: calories, quantitySamplePredicate: predicate) { _, result, error in
            guard let quantity = result?.sumQuantity(), error == nil else {
                print("error")
                return
            }
        }
        healthStore.execute(query)
    }
}
