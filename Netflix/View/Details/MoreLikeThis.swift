//
//  MoreLikeThis.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    static let calculatedWidth = CGFloat((UIScreen.main.bounds.width / 3) - 20)
    let columns = [
        GridItem(.fixed(calculatedWidth)),
        GridItem(.fixed(calculatedWidth)),
        GridItem(.fixed(calculatedWidth))
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            ForEach(0..<movies.count) { index in
                ZStack {
                    StandartHomeMovie(movie: movies[index])
                        .scaledToFill()
                }
                .frame(width: CGFloat((UIScreen.main.bounds.width / 3) - 20), height: 160, alignment: .center)
                .clipped()
            }
            
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
