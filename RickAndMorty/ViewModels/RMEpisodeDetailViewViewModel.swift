//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 12.05.2024.
//

import UIKit

class RMEpisodeDetailViewViewModel: NSObject {
    private let endpointUrl: URL?
    
    init(url: URL?) {
        self.endpointUrl = url
    }
}
