//
//  Hike.swift
//  Landmark
//
//  Created by Denny Arfansyah on 09/08/23.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
}

