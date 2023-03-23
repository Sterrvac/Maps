//
//  Landmark.swift
//  MapsKit
//
//  Created by macbook on 23.03.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var discrtiprtion: String
    
    private var imageName : String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinator: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinator.latitude,
            longitude: coordinator.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
