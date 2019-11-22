//
//  Http.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

struct ServiceHttp: HttpInterface {
    static func get<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data> {
        var request = URLRequest(url: UtilityQuery.appendItemsToUrl(url, UtilityQuery.toItems(params)))
        
        request.httpMethod = HttpMethod.get.rawValue

        return ServiceClient.request(request)
    }

    static func post<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data> {
        var request = URLRequest(url: url)
        
        request.httpMethod = HttpMethod.post.rawValue
        request.httpBody = UtilityParameters.encode(params)
        
        return ServiceClient.request(request)
    }

    static func put<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data> {
        var request = URLRequest(url: url)
        
        request.httpMethod = HttpMethod.post.rawValue
        request.httpBody = UtilityParameters.encode(params)
        
        return ServiceClient.request(request)
    }

    static func patch<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data> {
        var request = URLRequest(url: url)
        
        request.httpMethod = HttpMethod.patch.rawValue
        request.httpBody = UtilityParameters.encode(params)
        
        return ServiceClient.request(request)
    }

    static func delete<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data> {
        var request = URLRequest(url: url)
        
        request.httpMethod = HttpMethod.delete.rawValue
        request.httpBody = UtilityParameters.encode(params)
        
        return ServiceClient.request(request)
    }
}

