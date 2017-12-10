//
//  MovieService.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/26/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import Foundation

import Moya

struct MoviesService {
    static let API_KEY = Config.API_KEY
}

enum MoviesAPI: TargetType {
    
    case discoverMovies(sort_by: String, page: Int)
    case searchMovies(query: String, page: Int)
    case discoverSeries(sort_by: String, page: Int)
    case searchSeries(query: String, page: Int)
    
    var baseURL: URL { return URL(string: Config.API_BASE_URL)! }

    var path: String {
        switch self {
        case .discoverMovies:
            return Config.DISCOVER_MOVIE_PATH
        case .searchMovies:
            return Config.SEARCH_MOVIE_PATH
        case .discoverSeries:
            return Config.DISCOVER_SERIE_PATH
        case .searchSeries:
            return Config.SEARCH_SERIE_PATH
        }
    }

    var method: Moya.Method {
        switch self {
        case .discoverMovies, .searchMovies, .discoverSeries, .searchSeries:
            return .get
        }
    }

    var headers: [String : String]? { return ["Accept": "application/json",
                                             "Accept-Language": "",
                                             "Content-Type": "application/json"] }
    
    var sampleData: Data { return Data() }
    
    var task: Task {
        switch self {
        case .discoverMovies(let sort_by, let page):
            return .requestParameters(parameters: [Config.SORT_BY_PARAMETER: sort_by, Config.PAGE_PARAMETER: page, Config.API_KEY_PARAMETER: Config.API_KEY], encoding: URLEncoding.default)
        case .searchMovies(let query, let page):
            return .requestParameters(parameters: [Config.QUERY_PARAMETER: query, Config.PAGE_PARAMETER: page, Config.API_KEY_PARAMETER: Config.API_KEY], encoding: URLEncoding.default)
        case .discoverSeries(let sort_by, let page):
            return .requestParameters(parameters: [Config.SORT_BY_PARAMETER: sort_by, Config.PAGE_PARAMETER: page, Config.API_KEY_PARAMETER: Config.API_KEY], encoding: URLEncoding.default)
        case .searchSeries(let query, let page):
            return .requestParameters(parameters: [Config.QUERY_PARAMETER: query, Config.PAGE_PARAMETER: page, Config.API_KEY_PARAMETER: Config.API_KEY], encoding: URLEncoding.default)
        }
    }

}
