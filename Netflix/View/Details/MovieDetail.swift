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
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.horizontal, 22)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            StandartHomeMovie(movie: movie)
                                .scaledToFit()
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
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                }
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                            
                        }
                        .padding(.horizontal, 10)
                        
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                if showSeasonPicker {

                    Group {
                        Color.black.opacity(0.9)
                        
                        VStack(spacing: 20) {
                            Spacer()
                            
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { numOfSeason in
                                Button(action: {
                                    selectedSeason = numOfSeason + 1
                                    showSeasonPicker = false
                                }, label: {
                                    Text("Season \(numOfSeason + 1)")
                                        .foregroundColor(selectedSeason == numOfSeason + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == numOfSeason + 1 ? .title : .title2)
                                })
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                showSeasonPicker = !showSeasonPicker
                            }, label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                            })
                        }
                        .padding(.bottom, 30)
                        
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                }
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1, movieDetailToShow: .constant(nil))
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
