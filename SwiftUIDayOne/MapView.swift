//
//  MapView.swift
//  SwiftUIDayOne
//
//  Created by Mustafa on 02/10/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var landmarkCoordinate: CLLocationCoordinate2D

    
    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30, longitude: 116), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))



    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    init(landmarkCoordinate: CLLocationCoordinate2D ) {
        self.landmarkCoordinate = landmarkCoordinate
        region = MKCoordinateRegion(center: landmarkCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
        
    }
    
  
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmarkCoordinate: CLLocationCoordinate2D(latitude: 25, longitude: 10))
    }
}
