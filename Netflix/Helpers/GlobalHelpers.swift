//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by ozy on 17.04.2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    name: "Travelers",
    thumbnailURL: URL(string: "https://images.moviesanywhere.com/6305a9e8ed76d5fa485ac16637655cf7/bcc68be4-eede-409b-a63d-e179b28d19b4.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "Watch Season 6 Now"
)
let exampleMovie2 = Movie(
    name: "DARK",
    thumbnailURL: URL(string: "https://wallpapers.moviemania.io/phone/tv/1396/b7bd15/breaking-bad-phone-wallpaper.jpg?w=1016&h=1807")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2019,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel"
)
let exampleMovie3 = Movie(
    name: "Communith",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel"
)
let exampleMovie4 = Movie(
    name: "Alone",
    thumbnailURL: URL(string: "https://i.pinimg.com/originals/bc/d5/c9/bcd5c9519581acc60bd60a429ab0c88f.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2018,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "Watch Season 3 Now"
)
let exampleMovie5 = Movie(
    name: "Hanniball",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel"
)
let exampleMovie6 = Movie(
    name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "Watch Season 6 Now"
)


let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
let exampleEpisodeInfo1: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "Endings and Beginnigs", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", season: 2, episode: 1)

extension LinearGradient {
    // this static will be instantiated only for once and store in the memory for later use
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
