//
//  StandartHomeMovie.swift
//  Netflix
//
//  Created by ozy on 17.04.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMoview1)
            .frame(width: 200, height: 300)
    }
}
