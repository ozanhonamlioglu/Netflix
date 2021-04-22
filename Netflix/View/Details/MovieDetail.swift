//
//  MovieDetail.swift
//  Netflix
//
//  Created by ozan honamlioglu on 21.04.2021.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        StandartHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubHeadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            Text("Watch Season 3")
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red, foregroundColor: .white) {
                            
                        }
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                    }
                    .padding(.horizontal, 10)
                    
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie4)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }.padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
