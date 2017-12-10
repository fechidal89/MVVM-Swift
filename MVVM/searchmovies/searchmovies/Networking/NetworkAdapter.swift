//
//  NetworkAdapter.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/26/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import Foundation

import Moya_ModelMapper
import Moya
import Mapper
import RxSwift

struct NetworkAdapter {

    static let provider = MoyaProvider<MoviesAPI>()

    static func request(target: MoviesAPI, success successCallback: @escaping (ResultAPI) -> Void, error errorCallback: @escaping (Swift.Error) -> Void, failure failureCallback: @escaping (MoyaError) -> Void) {
        
        provider.request(target) { (result) in
            switch result {
            case .success(let response):

                do {
                    let result_api = try response.map(to: ResultAPI.self)

                    if response.statusCode >= 200 && response.statusCode <= 300 {
                        successCallback(result_api)
                    }else{
                        let error = NSError(domain:"org.themoviedb.searchmovies", code: result_api.status_code!, userInfo:[NSLocalizedDescriptionKey: result_api.status_message ?? "Comunication Error"])
                        errorCallback(error)
                    }
                } catch {
                    let error = NSError(domain:"org.themoviedb.searchmovies", code:0, userInfo:[NSLocalizedDescriptionKey: "Parsing Error"])
                    errorCallback(error)
                }
            case .failure(let error):
                failureCallback(error)
            }
        }
    }
    
    
}
