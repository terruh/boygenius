//
//  ContentView.swift
//  boygenius
//
//  Created by Scholar on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
 @State private var titleText = ""
    
    var body: some View {
          
        NavigationStack {
            VStack {
                Text("Welcome to the boygenius quiz!")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Image("lucy")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Text("Which member of boygenius is this?")
                    .font(.title2)
                HStack {
                    Button("Phoebe") {
                        titleText = "❌"
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    Button("Julien") {
                        titleText = "❌"
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    Button("Lucy") {
                        titleText = "✅"
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.indigo)
                    

                }
                .padding(.bottom, 25.0)

                
                Text(titleText)
                    .font(.largeTitle)
                
                
            }
            .padding(.bottom, 100.0)
            
            NavigationLink(destination: Question2()) {
                Text("Next Question -->")
                    .font(.title2)
            }
            
            
            
            
        }
        .padding(.all, 20.0)
            
            
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
