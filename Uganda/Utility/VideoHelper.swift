//
//  VideoHelper.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 04/11/2022.
//

import Foundation
import AVKit

var videoPlayer:AVPlayer?

func play(Name: String, Format : String)-> AVPlayer{
    
    if (Bundle.main.url(forResource: Name, withExtension: Format)) != nil{
        
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: Name, withExtension: Format)!)
        
        videoPlayer?.play()
        
    
    }
    return videoPlayer!
}
