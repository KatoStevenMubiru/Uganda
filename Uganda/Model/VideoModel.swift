//
//  VideoModel.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 03/11/2022.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name : String
    let headline : String
    
    // computedproperty
    
    var thumbnail: String{
        
        "video\(id)"
    }
    
    
    
    
}
