//
//  GalleryView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 31/10/2022.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectedAnimal: String = "lion"
    
    
    let animal : [Animal] = Bundle.main.decode("animals.json")
    
    let gridLayout: [GridItem] = [
    
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    
    
    ]
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 30) {
                
                
            Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.accentColor, lineWidth: 9))
                
                
                LazyVGrid(columns: gridLayout, alignment: .center , spacing: 10) {
                    ForEach(animal) { item in
                        
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                        
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                                                
                    }// for each
                    
                }// end of lazy grid
                
            }// end of v-stack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }// end of scroll view
        
    }// end of view
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
