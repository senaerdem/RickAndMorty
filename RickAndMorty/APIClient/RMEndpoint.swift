//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 19.04.2024.
//

import Foundation

// Represent unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    case character // Endpoint to get character info
    case location // Endpoint to get location info
    case episode // Endpoint to get episode info
}
