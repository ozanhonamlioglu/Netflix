//
//  Home.swift
//  Netflix
//
//  Created by ozy on 17.04.2021.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    // @ObservedObject var vm: HomeVM
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            // main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    ZStack(alignment: .top) {
                        TopMoviePreview(movie: exampleMovie1)
                            .frame(width: screen.width)
                            .padding(.top, -50)
                        
                        TopRowButtons()
                    }
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandartHomeMovie(movie: movie)
                                            .frame(width: 100, height: 150)
                                            .scaledToFill()
                                            .padding(.horizontal, 0)
                                            .clipped()
                                            .onTapGesture(perform: {
                                                movieDetailToShow = movie
                                            })
                                    }
                                }
                            }
                        }.padding(.vertical, 10)
                    }
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
            }
            
        }
        .foregroundColor(.white)
        .statusBar(hidden: true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
