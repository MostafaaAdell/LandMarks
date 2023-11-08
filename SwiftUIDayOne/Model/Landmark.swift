//
//  Landmark.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 03/10/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Codable,Identifiable {
    
    var id:Int
    var name:String
    var park:String
    var state:String
    var description:String
    var imageName:String
    var image:Image{
        Image(imageName)
    }
    var loacationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    private var coordinates:Coordinates
    struct Coordinates:Codable{
        var latitude:Double
        var longitude:Double
    }
}
