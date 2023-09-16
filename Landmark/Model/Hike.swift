//
//  Hike.swift
//  Landmark
//
//  Created by Denny Arfansyah on 09/08/23.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let distance: Double
    let difficulty: Int
    let observations: [Observation]
    
    struct Observation: Codable, Hashable {
        let distanceFromStart: Double
        
        let elevation: Range<Double>
        let pace: Range<Double>
        let heartRate: Range<Double>
    }
    
    static let formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
}
