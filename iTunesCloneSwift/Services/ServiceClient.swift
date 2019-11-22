//
//  Http.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/17/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import PromiseKit

struct ServiceClient: ClientInterface {
    static func request(_ request: URLRequest) -> Promise<Data> {
        return Promise<Data> { seal -> Void in
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    seal.reject(error)
                }

                guard let response = response as? HTTPURLResponse else {
                    seal.reject(ClientError.invalidResponse)
                    return
                }
                
                guard response.statusCode >= 200, response.statusCode < 300 else {
                    seal.reject(ClientError.invalidStatusCode)
                    return
                }

                guard let data = data else {
                    seal.reject(ClientError.noData)
                    return
                }

                seal.fulfill(data)
            }
        }
    }
}

