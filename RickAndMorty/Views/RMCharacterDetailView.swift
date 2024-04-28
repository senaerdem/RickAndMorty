//
//  RMCharacterDetailView.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 22.04.2024.
//

import UIKit

// View for single character info
final class RMCharacterDetailView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
    
}
