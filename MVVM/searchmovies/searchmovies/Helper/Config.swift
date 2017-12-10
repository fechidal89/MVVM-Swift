//
//  Config.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/26/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import Foundation

struct Config {
    
    static let API_KEY:      String = "cc2bbff367576b1028bd014ff5d3312b"
    static let API_BASE_URL: String = "https://api.themoviedb.org/3"
    
    static let DISCOVER_MOVIE_PATH: String = "/discover/movie"
    static let SEARCH_MOVIE_PATH:   String = "/search/movie"
    static let DISCOVER_SERIE_PATH: String = "/discover/tv"
    static let SEARCH_SERIE_PATH:   String = "/search/tv"
    
    static let SORT_BY_PARAMETER: String = "sort_by"
    static let PAGE_PARAMETER:    String = "page"
    static let API_KEY_PARAMETER: String = "api_key"
    static let QUERY_PARAMETER:   String = "query"
}

