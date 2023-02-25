//
//  VideoListItem.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 03/11/2022.
//

import SwiftUI

struct VideoListItem: View {
    let video : Video
    
    var body: some View {
      
        HStack(spacing: 10) {
            
            ZStack{
                
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                .cornerRadius(12)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 35)
                    .shadow(radius: 5)
                
            }// end of zstack
            
            VStack(alignment: .leading , spacing: 10) {
                
                
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    
                
            }// end of vstack
           
        }// end of hstack
        
        
        
        
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static let videos : [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
