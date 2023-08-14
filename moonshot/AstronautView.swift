//
//  AstronautView.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import SwiftUI

struct AstronautView: View {
    var astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
                
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
