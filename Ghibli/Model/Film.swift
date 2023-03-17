//
//  Film.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import Foundation

struct Film: Codable {
    let id, title, originalTitle: String
    let image, movieBanner: String
    let description, director, producer, releaseDate: String
    let runningTime, rating: String

    enum CodingKeys: String, CodingKey {
        case id, title
        case originalTitle = "original_title"
        case image
        case movieBanner = "movie_banner"
        case description, director, producer
        case releaseDate = "release_date"
        case runningTime = "running_time"
        case rating = "rt_score"
    }
}

typealias GhibliFilms = [Film]
 
