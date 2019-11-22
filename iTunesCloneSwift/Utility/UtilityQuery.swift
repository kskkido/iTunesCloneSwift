//
//  Query.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/19/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import Foundation

struct UtilityQuery {
    static func toItems<P: Encodable>(_ params: P) -> [URLQueryItem] {
        return (UtilityParameters.toDictionary(params) ?? [:]).map { entry -> URLQueryItem in
            return URLQueryItem(name: entry.key, value: entry.value)
        }
    }

    static func appendItemsToUrl(_ url: URL, _ items: [URLQueryItem]) -> URL {
        return items.reduce(url) { acc, item in
            UtilityQuery.appendItemToUrl(acc, item)
        }
    }

    static func appendItemToUrl(_ url: URL, _ item: URLQueryItem) -> URL {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)

        components?.queryItems = [item]
        return components?.url ?? url
    }
}
