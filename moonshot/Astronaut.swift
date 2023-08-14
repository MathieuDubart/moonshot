//
//  Astronaut.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import Foundation
// ----- Identifiable permet d'utiliser des tableaux/dictionnaires d'Astronaut() dans des boucles dynamiques
struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}
