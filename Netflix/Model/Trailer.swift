//
//  Trailer.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
