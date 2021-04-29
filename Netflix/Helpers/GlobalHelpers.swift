//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by ozy on 17.04.2021.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/200/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/200/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/200/106")!

var randomExampleImageURL: URL {
    [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement()!
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let scene1 = Episode(name: "Test EP 1", season: 1, episode: 1, thumbnailImageURLString: "https://picsum.photos/200/106", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)
let scene2 = Episode(name: "Test EP 2", season: 1, episode: 2, thumbnailImageURLString: "https://picsum.photos/200/107", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)
let scene3 = Episode(name: "Test EP 3", season: 1, episode: 3, thumbnailImageURLString: "https://picsum.photos/200/108", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)
let scene4 = Episode(name: "Test EP 4", season: 2, episode: 1, thumbnailImageURLString: "https://picsum.photos/200/109", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)
let scene5 = Episode(name: "Test EP 5", season: 2, episode: 2, thumbnailImageURLString: "https://picsum.photos/201/106", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)
let scene6 = Episode(name: "Test EP 6", season: 3, episode: 1, thumbnailImageURLString: "https://picsum.photos/202/106", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", length: 54, videoURL: exampleVideoURL)

let exampleEpisodes = [scene1, scene2, scene3, scene4, scene5, scene6]

let exampleMovie1 = Movie(
    name: "Travelers",
    thumbnailURL: URL(string: "https://images.moviesanywhere.com/6305a9e8ed76d5fa485ac16637655cf7/bcc68be4-eede-409b-a63d-e179b28d19b4.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6],
    episodes: exampleEpisodes,
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers
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
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [],
    episodes: exampleEpisodes,
    trailers: exampleTrailers
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
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [],
    episodes: exampleEpisodes,
    trailers: exampleTrailers
)
let exampleMovie4 = Movie(
    name: "Alone",
    thumbnailURL: URL(string: "https://i.pinimg.com/originals/bc/d5/c9/bcd5c9519581acc60bd60a429ab0c88f.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2018,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [],
    episodes: exampleEpisodes,
    promotionHeadline: "Watch Season 3 Now",
    trailers: exampleTrailers
)
let exampleMovie5 = Movie(
    name: "Hanniball",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2021,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [],
    trailers: exampleTrailers
)
let exampleMovie6 = Movie(
    name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisode: exampleEpisodeInfo1,
    creators: "Baran bo odan, Jatje Friese",
    cast: "Louis Houfmann, Oliver Masucci, Jordis Triebel",
    moreLikeThis: [],
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers
)

var exampleMovies: [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
let exampleEpisodeInfo1: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "Endings and Beginnigs", description: "A young man must stop the Lord of Darkness from both destroying daylight and marrying the woman he loves.", season: 2, episode: 1)

