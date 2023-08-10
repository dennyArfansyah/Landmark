//
//  Landmark.swift
//  Landmark
//
//  Created by Denny Arfansyah on 08/08/23.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
    
    struct Coordinates: Codable, Hashable {
        let longitude: Double
        let latitude: Double
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var about: String {
        "About \(name)"
    }
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case mountains = "Mountains"
        case rivers = "Rivers"
    }
    var category: Category
    
}
