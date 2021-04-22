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
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
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

struct RatingView: View {
    @State var screen: UIScreen?
    
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
            
        }
        .frame(width: 50, height: 20, alignment: .center)
        .cornerRadius(3.0)
    }
}
