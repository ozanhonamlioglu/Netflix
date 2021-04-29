//
//  Episodes.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                })
                .font(.system(size: 16))
                
                Spacer()
            }
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(videoURL: episode.videoURL, imageURL: episode.thumbnailURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episode). \(episode.name)")
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // do later
                        }, label: {
                            Image(systemName: "arrow.down.to.line.alt")
                                .font(.system(size: 20))
                        })
                        
                    }
                    Text(episode.description)
                }
                .padding(.bottom, 20)
                
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            EpisodesView(episodes: exampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
