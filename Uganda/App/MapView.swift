//
//  MapView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 31/10/2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    @State private var region : MKCoordinateRegion = {
        
        var mapCordinates = CLLocationCoordinate2D(latitude:  2.145768, longitude: 31.806906)
        var zoomLevel = MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 10.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: zoomLevel)
        
        return mapRegion
    }()
    
    let locations:[NationalParkLocations] = Bundle.main.decode("locations.json")
    var body: some View {
        
        
        
       
            
        
        // our map with annotations
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            MapAnnotation(coordinate: item.location){
                
            AnnotationView(location: item)
                
                
                
                
            }
            
            
            
            
            
        }
           
        )
        .ignoresSafeArea()
        
        Text("Map")
            
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
           
    }
}
