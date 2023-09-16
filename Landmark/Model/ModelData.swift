//
//  ModelData.swift
//  Landmark
//
//  Created by Denny Arfansyah on 08/08/23.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    let hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    @Published var tasks: [Task] = load("task.json")
    
    var featured: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
    
    var taskCategories: [String: [Task]] {
        Dictionary(
            grouping: tasks,
            by: { $0.category }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}

func getStandardDate(newDate: Date) -> String {
    let dateToString = DateFormatter()
    dateToString.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return dateToString.string(from: newDate)
}
