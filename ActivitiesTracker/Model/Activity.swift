//
//  Activity.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import Foundation
import SwiftUI

struct Activity : Hashable, Identifiable, Codable {
    var id: Int
    var name: String
    var description: String
    var lastAdded: Bool
    
    var activityType: ActivityType
    enum ActivityType: String, CaseIterable, Codable {
        case running = "Running"
        case cycling = "Cycling"
        case other = "Other"
    }
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
