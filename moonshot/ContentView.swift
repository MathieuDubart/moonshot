//
//  ContentView.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    // ----- Ici on précise le type de astronauts parceque la méthode main prend en paramètre un type inconnu et retourne un type inconnu alors que Swift a BESOIN de connaître le type
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @AppStorage("showingGrid") private var showingGrid = true
    
    var body: some View {
        NavigationView {
            // ----- Utilisatin de Group{} pour wrapper la condition et pourovir appliquer des modifiers sans devoir les mettre dans chaque view
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            // ----- Force swift ui à utiliser le dark mode au lieu du light mode
            .preferredColorScheme(.dark)
            .toolbar {
                Button() {
                    showingGrid.toggle()
                } label: {
                    if showingGrid {
                        Label("Show as table", systemImage: "list.dash")
                    } else {
                        Label("Show as grid", systemImage: "square.grid.2x2")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
