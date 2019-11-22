//
//  Request.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

struct ApiSearch {
    static func get(_ params: GetParameters) -> Promise<GetResponse> {
        return ServiceITunesApi.get("/search", params)
            .map { try UtilityResponse.decode(GetResponse.self, $0) }
    }

    struct GetParameters: Encodable {
        let term: String
        let entity: String
        let country: String = "US"
    }
    
    struct GetResponse: Decodable {
        let resultCount: Int?
    }
}
