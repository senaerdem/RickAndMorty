//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 22.04.2024.
//

import UIKit

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    enum SectionType: CaseIterable {
        case photo
        case indformation
        case episodes
    }
    
    public let sections = SectionType.allCases
    
    // MARK: Init
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
    // MARK: - Layouts
    
    public func createPhotoSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0)
        let group = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5)), subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        
        return section
    }
    public func createInfoSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0)))
        item.contentInsets = NSDirectionalEdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(150)), subitems: [item, item])
        let section = NSCollectionLayoutSection(group: group)
        
        return section
    }
    public func createEpisodeSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        item.contentInsets = NSDirectionalEdgeInsets(top: 9, leading: 5, bottom: 9, trailing: 8)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.75), heightDimension: .absolute(150)), subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .paging
        return section
    }
}
