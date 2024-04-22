//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 22.04.2024.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
