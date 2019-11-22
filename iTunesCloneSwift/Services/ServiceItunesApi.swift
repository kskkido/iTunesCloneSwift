//
//  ItunesApi.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

struct ServiceITunesApi: ApiInterface {
    static let domain = "https://itunes.apple.com/"
    
    static func get<P: Encodable>(_ path: String, _ params: P) -> Promise<Data> {
        return ServiceHttp.get(ServiceITunesApi.toUrl(path), params)
    }

    static func post<P: Encodable>(_ path: String, _ params: P) -> Promise<Data> {
        return ServiceHttp.post(ServiceITunesApi.toUrl(path), params)
    }

    static func put<P: Encodable>(_ path: String, _ params: P) -> Promise<Data> {
        return ServiceHttp.put(ServiceITunesApi.toUrl(path), params)
    }

    static func patch<P: Encodable>(_ path: String, _ params: P) -> Promise<Data> {
        return ServiceHttp.patch(ServiceITunesApi.toUrl(path), params)
    }

    static func delete<P: Encodable>(_ path: String, _ params: P) -> Promise<Data> {
        return ServiceHttp.delete(ServiceITunesApi.toUrl(path), params)
    }
    
    static func toUrl(_ path: String) -> URL {
        return URL(string: UtilityPath.join([ServiceITunesApi.domain, path]))!
    }
}
