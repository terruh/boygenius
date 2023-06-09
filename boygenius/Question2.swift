//
//  Question2.swift
//  boygenius
//
//  Created by Scholar on 6/9/23.
//

import SwiftUI

struct Question2: View {
    
    @State private var titleText = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Who is the shortest member of boygenius?")
                    .font(.title2)
                HStack {
                    Button("Julien") {
                    titleText = "✅"
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    Button("Phoebe") {
                       titleText = "❌"
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    Button("Lucy") {
                        titleText = "❌"
                     }
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)

                Text(titleText)
                    .font(.largeTitle)
                
                if titleText == "✅" {
                    Image("juju")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    Text("See look at this cutie!")
                        .font(.title)
                    
                }
                
                }
                
            .padding(.bottom, 50)
            
            
                NavigationLink(destination: Question3()) {
                    Text("Last Question -->")
                        .font(.title2)
                }
                .padding(.all, 20.0)
                
            }
            
            
        }
        
    }


struct Question2_Previews: PreviewProvider {
    static var previews: some View {
        Question2()
    }
}
