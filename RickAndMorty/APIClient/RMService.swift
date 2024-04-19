//
//  RMService.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 19.04.2024.
//

import Foundation

// Primary API service object to get Rick and Morty data
final class RMService {
    // Shared singleton instance
    static let shared = RMService()
    
    // Privatized constructor
    private init() {}
    
    // Send Rick and Morty API Call
    //  Parameters:
    //  - request : Request instance
    //  - type : The type of object we expected to get back
    //  - completion : Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>
        ) -> Void
    ) {
    }
}
