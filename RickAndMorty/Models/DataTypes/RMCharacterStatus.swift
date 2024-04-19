//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 19.04.2024.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // The status of the character ('Alive', 'Dead' or 'unknown').
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
