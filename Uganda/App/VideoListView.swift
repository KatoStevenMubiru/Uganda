//
//  VideoListView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 31/10/2022.
//

import SwiftUI

struct VideoListView: View {
    
    var videos : [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        
        NavigationView {
            
            List{
                
        
                
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(selectedVideo: item.id, titleOfVideo: item.name)){
                        VideoListItem(video: item)
                            .padding(.vertical, 8)
                    }// navigation link
                    
                }// end of for each loop
                
            }// end of list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            
        }// end of navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoListView()
    }
}
