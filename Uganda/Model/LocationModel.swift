//
//  LocationModel.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 04/11/2022.
//

import Foundation
import MapKit


struct NationalParkLocations: Codable, Identifiable{
    
    var id: String
    var name : String
    var image : String
    var latitude: Double
    var longitude : Double
    
// we are extracting the cordinates and storing them into a variable
    
    var location : CLLocationCoordinate2D{
        
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                               
                               
                               }
    
    
}
