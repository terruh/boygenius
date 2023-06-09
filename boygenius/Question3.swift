//
//  Question3.swift
//  boygenius
//
//  Created by Scholar on 6/9/23.
//

import SwiftUI

struct Question3: View {
    
    @State private var titleText = ""
    
    var body: some View {
        
        VStack {


            Text("Finally, what is their new album called?")
                .font(.title2)
            VStack {
                Button("sad boys singing") {
                    titleText = "❌"
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                Button("'boygenius'") {
                    titleText = "❌"
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                Button("the record") {
                    titleText = "✅"
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                
            }
            .padding(.all, 20.0)
        
            if titleText == "✅" {
                Text("Congrats!!!!! You finished!")
                    .font(.title)
            } else if titleText == "❌" {
                Text("So Close! Try again to finish!")
                    .font(.title)
            }
            Text(titleText)
                .font(.largeTitle)
            
        }
    }
    
    struct Question3_Previews: PreviewProvider {
        static var previews: some View {
            Question3()
        }
    }
}
