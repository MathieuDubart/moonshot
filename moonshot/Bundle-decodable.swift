//
//  Bundle-decodable.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import Foundation

extension Bundle {
    // ----- <T> permet de signifier "type inconnu", le T: Codable signifie que le type DOIT être conforme au protocol Codable
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
            
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
            
        return loaded
    }
}
