//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 18.04.2024.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
    
}
