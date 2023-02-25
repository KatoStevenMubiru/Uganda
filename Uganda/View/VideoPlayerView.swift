//
//  VideoPlayerView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 04/11/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var selectedVideo: String
    var titleOfVideo : String
    
    
    var body: some View {
       
        VStack {
            VideoPlayer(player: play(Name: selectedVideo, Format: "mp4")){
                
                Text(titleOfVideo)
            }
            .overlay(
               Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .padding(.top, 9)
                .padding(.horizontal, 9)
               , alignment: .bottomTrailing
            
            )// end of the overlay
            
        }// end of the vstack
        .accentColor(.accentColor)
        .navigationBarTitle(titleOfVideo,displayMode: .inline)
        
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(selectedVideo: "lion", titleOfVideo: "Lion")
    }
}
