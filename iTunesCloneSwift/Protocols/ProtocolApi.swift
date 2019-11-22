//
//  Api.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

public protocol ApiInterface {
    static func get<P: Encodable>(_ path: String, _ params: P) -> Promise<Data>
    static func post<P: Encodable>(_ path: String, _ params: P) -> Promise<Data>
    static func put<P: Encodable>(_ path: String, _ params: P) -> Promise<Data>
    static func patch<P: Encodable>(_ path: String, _ params: P) -> Promise<Data>
    static func delete<P: Encodable>(_ path: String, _ params: P) -> Promise<Data>
}
