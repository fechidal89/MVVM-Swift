//
//  ResultAPI.swift
//  searchmovies
//
//  Created by Fernando C. Hidalgo C. on 11/26/17.
//  Copyright © 2017 Fernando C. Hidalgo C. All rights reserved.
//

import Foundation
import Mapper

struct ResultAPI: Mappable  {
    var status_code:    Int?
    var status_message: String?
    var page:           Int?
    var total_results:  Int?
    var total_pages:    Int?
    var results:        [Movie]?
    
    init(map: Mapper) {
        page = map.optionalFrom("page")
        total_results = map.optionalFrom("total_results")
        total_pages = map.optionalFrom("total_pages")
        results = map.optionalFrom("results")
        status_code = map.optionalFrom("status_code")
        status_message = map.optionalFrom("status_message")
    }
}
