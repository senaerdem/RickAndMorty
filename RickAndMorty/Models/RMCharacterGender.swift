//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 19.04.2024.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
