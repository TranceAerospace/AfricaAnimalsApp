//
//  MapView.swift
//  Africa
//
//  Created by Mark Trance on 4/3/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [Location] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // Basic Map
        //Map(coordinateRegion: $region)
        
        // Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // Old pin style (static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            // New Pin Style (static)
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            // Custom Annotation
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            } // Annotation
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
