//
//  Movie.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/25/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import Foundation

import Mapper

class Movie: Mappable {
    var id: Int64
    var title: String
    var original_title: String
    var backdrop_path: String
    var original_language: String
    var overview: String
    var poster_path: String
    var release_date: String
    var popularity: Double
    var vote_average: Double
    var vote_count: Int

    required init(map: Mapper) throws {
        try id = map.from("id")
        try title = map.from("title")
        try original_title = map.from("original_title")
        try backdrop_path = map.from("backdrop_path")
        try original_language = map.from("original_language")
        try overview = map.from("overview")
        try poster_path = map.from("poster_path")
        try release_date = map.from("release_date")
        try popularity = map.from("popularity")
        try vote_average = map.from("vote_average")
        try vote_count = map.from("vote_count")
    }
}

