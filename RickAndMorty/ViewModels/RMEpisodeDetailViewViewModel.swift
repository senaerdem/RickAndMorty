//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 12.05.2024.
//

import UIKit

class RMEpisodeDetailViewViewModel: NSObject {
    
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        super.init()  // first super init
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
                let request = RMRequest(url: url) else {
            return
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { result in
            switch result {
            case .success(let success):
                print(String(describing: success))
            case.failure(let failure):
                break
            }
        }
    }
}
