//
//  Parameters.swift
//  iTunesCloneSwift
//
//  Created by Keisuke Kido on 11/23/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

import Foundation

struct UtilityParameters {
    static func toDictionary<P: Encodable>(_ params: P) -> [String: String]? {
        if let data = UtilityParameters.encode(params) {
           return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: String]
        }
        
        return nil
    }
    
    static func encode<P: Encodable>(_ params: P) -> Data? {
        return try? JSONEncoder().encode(params)
    }
}

