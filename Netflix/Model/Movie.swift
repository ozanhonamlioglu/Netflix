//
//  Moview.swift
//  Netflix
//
//  Created by ozy on 17.04.2021.
//

import Foundation

struct Movie: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // movie detail
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var moreLikeThis: [Movie]
    
    var episodes: [Episode]?
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var numberOfSeasonDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):S\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):S\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisode.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
