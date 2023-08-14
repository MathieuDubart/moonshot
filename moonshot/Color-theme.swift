//
//  Color-theme.swift
//  moonshot
//
//  Created by Mathieu Dubart on 14/08/2023.
//

import Foundation
import SwiftUI

// ----- Extension qui permet d'utliser ces propriétées là où Swift attend qu'on lui donne un ShapeStyle
extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
