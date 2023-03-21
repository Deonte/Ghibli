//
//  MockData.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import Foundation

struct MockData {
    static let singleMovie = Film(id: "0440483e-ca0e-4120-8c50-4c8cd9b965d6",
                                  title: "Princess Mononoke",
                                  originalTitle: "もののけ姫",
                                  image: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/jHWmNr7m544fJ8eItsfNk8fs2Ed.jpg",
                                  movieBanner: "https://image.tmdb.org/t/p/original/6pTqSq0zYIWCsucJys8q5L92kUY.jpg",
                                  description: "Ashitaka, a prince of the disappearing Ainu tribe, is cursed by a demonized boar god and must journey to the west to find a cure. Along the way, he encounters San, a young human woman fighting to protect the forest, and Lady Eboshi, who is trying to destroy it. Ashitaka must find a way to bring balance to this conflict.",
                                  director: "Hayao Miyazaki",
                                  producer: "Toshio Suzuki",
                                  releaseDate: "1997",
                                  runningTime: "134",
                                  rating: "92")
    
    static let multipleMovies = [singleMovie, singleMovie, singleMovie]
}
