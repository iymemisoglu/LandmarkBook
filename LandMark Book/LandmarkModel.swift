//
//  File.swift
//  LandMark Book
//
//  Created by İlker Yasin Memişoğlu on 26.01.2023.
//

import SwiftUI
import CoreLocation


struct LandmarkModel : Identifiable {
    
    var id :Int
    var name: String
    var imageName: String
    var country: String
    var category: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}


let eiffelLandmark = LandmarkModel(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.8583701, longitude: 2.2922926))

let anadoluHisarıLandmark = LandmarkModel(id: 1, name: "Anadolu Hisarı", imageName: "anadoluhisarı", country: "Türkiye", category: "Historic Area", coordinates: Coordinates(latitude: 41.0832027, longitude: 29.0491444))

let londonBridgeLandmark = LandmarkModel(id: 2, name: "London Bridge", imageName: "londonbridge", country: "UK", category: "Bridge", coordinates: Coordinates(latitude: 51.5079111, longitude: -0.0899163))

let pisaLandmark = LandmarkModel(id: 3, name: "Pisa", imageName: "pisa", country: "Italy", category: "Tower", coordinates: Coordinates(latitude: 43.7229503, longitude: 10.3943062))

let sydneyLandmark = LandmarkModel(id: 4, name: "Sydney Opera House", imageName: "sydney", country: "Australia", category: "Opera House", coordinates: Coordinates(latitude: -33.8567844, longitude: 151.213108))

let landmarkArray = [eiffelLandmark,anadoluHisarıLandmark,londonBridgeLandmark,pisaLandmark,sydneyLandmark]

