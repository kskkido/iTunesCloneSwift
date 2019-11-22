//
//  Parameters.swift
//  iTunesCloneSwift
//
//  Created by Keisuke Kido on 11/23/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import Foundation

struct UtilityResponse {
    static func decode<T: Decodable>(_ model: T.Type, _ data: Data) throws -> T {
        do {
            return try JSONDecoder().decode(model, from: data)
        } catch {
            throw ClientError.parseFailed
        }
    }
}
