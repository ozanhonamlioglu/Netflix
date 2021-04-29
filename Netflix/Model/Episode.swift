//
//  Episode.swift
//  Netflix
//
//  Created by ozan honamlioglu on 22.04.2021.
//

import Foundation

struct Episode: Identifiable, Hashable {
    var id: String = UUID().uuidString
    
    var name: String
    var season: Int
    var episode: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
