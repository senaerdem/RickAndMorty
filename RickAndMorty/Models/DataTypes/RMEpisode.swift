//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Sena Nur Erdem on 18.04.2024.
//

import Foundation

struct RMEpisode: Codable, RRMEpisodeDataRender {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
