//
//  MovieInfoSubHeadline.swift
//  Netflix
//
//  Created by ozan honamlioglu on 21.04.2021.
//

import SwiftUI

struct MovieInfoSubHeadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("MOVIE YEAR")
            
            Text("RATING")
            
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 5)
    }
}

struct MovieInfoSubHeadline_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            MovieInfoSubHeadline(movie: exampleMovie2)
        }
    }
}
