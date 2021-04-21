//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by ozy on 18.04.2021.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    @State var listAdded: Bool = false
    @State var frame: CGSize = .zero
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            GeometryReader {
                (geometry) in self.makeView(geometry)
            }
            
        }
        .foregroundColor(.white)
    }
    
    func makeView(_ geometry: GeometryProxy) -> some View {
        print(geometry.size.width, geometry.size.height)

        DispatchQueue.main.async { self.frame = geometry.size }

        return VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category).font(.footnote)
                            
                            if let last = movie.categories.last, last != category {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                            
                        }
                    }
                }

                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: listAdded) {
                        listAdded = !listAdded
                    }
                    
                    Spacer()
                    
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        // do smt later
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // do smt later
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 10)

            }
            .background(LinearGradient.blackOpacityGradient)
            .padding(.top, geometry.size.height / 2)

    }
    
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack {
                    TopMoviePreview(movie: exampleMovie1)
                }
                .padding(.top, -50)
            }
            
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack {
                    TopMoviePreview(movie: exampleMovie1)
                }
                .padding(.top, -50)
            }.previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        }
    }
}
