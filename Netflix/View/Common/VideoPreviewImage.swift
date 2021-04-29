//
//  VideoPreviewImage.swift
//  Netflix
//
//  Created by ozan honamlioglu on 24.04.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var videoURL: URL
    var imageURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(videoURL: exampleVideoURL, imageURL: exampleImageURL)
    }
}
