//
//  ExternalView.swift
//  Uganda
//
//  Created by Kato Steven Mubiru on 03/11/2022.
//

import SwiftUI

struct ExternalView: View {
    
    let animal : Animal
    
    var body: some View {
        
        GroupBox{
            
            HStack {
                Image(systemName: "globe")
                Text("Wkipedia")
                Spacer()
                
                Group{
                    
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                }
                .foregroundColor(.accentColor)
            
            }// hstack
        }// end of group box
    }
}

struct ExternalView_Previews: PreviewProvider {
    static let animals :[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
