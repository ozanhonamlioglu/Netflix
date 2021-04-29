//
//  TrailerList.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    
    var body: some View {
        VStack {
            
            ForEach(trailers) { trailer in
                
                VStack(alignment: .leading) {
                    VideoPreviewImage(videoURL: trailer.videoURL, imageURL: trailer.thumbnailImageURL)
                    
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
                
            }
            
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            TrailerList(trailers: exampleTrailers)
        }
    }
}
