//
//  DataReader.swift
//  ActivitiesTracker
//
//  Created by Nikita Povelkin on 16.02.22.
//

import Foundation
import Combine

final class DataReader: ObservableObject {
    @Published var activities: [Activity] = load("activityData.json")

    var activityRecords: [String: [Activity]] {
        Dictionary(
            grouping: activities,
            by: { $0.activityType.rawValue }
        )
    }
    
    var lastAdded: [Activity]{
        activities.filter{$0.lastAdded}
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
