//
//  Mission.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import Foundation

struct Mission:Codable, Identifiable {
    // ----- Nested structure, n'affecte pas le code mais permet de le garder organisé ( Mission.CrewRole() )
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName : String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
