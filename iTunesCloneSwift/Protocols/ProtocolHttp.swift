//
//  Api.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

public protocol HttpInterface {
    static func get<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data>
    static func post<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data>
    static func put<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data>
    static func patch<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data>
    static func delete<P: Encodable>(_ url: URL, _ params: P) -> Promise<Data>
}

public enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}
