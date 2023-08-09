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
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    struct Coordinates: Codable, Hashable {
        var longitude: Double
        var latitude: Double
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    var about: String {
        "About \(name)"
    }
    
//    enum Category: String, CaseIterable, Codable {
//        case lakes = "Lakes"
//        case mountaints = "Mountaint"
//        case rivers = "Rivers"
//    }
//    var category: Category
}
