//
//  Api.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

public protocol ClientInterface {
    static func request(_ request: URLRequest) -> Promise<Data>
}

public enum ClientError: LocalizedError {
    case invalidUrl
    case invalidResponse
    case invalidStatusCode
    case noData
    case parseFailed
}
