//
//  ActivitiesTrackerApp.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import SwiftUI

@main
struct ActivitiesTrackerApp: App {
    @StateObject private var dataReader = DataReader()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataReader)
        }
    }
}
