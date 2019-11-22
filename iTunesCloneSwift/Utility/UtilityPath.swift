//
//  Path.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/20/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

struct UtilityPath {
    static func join(_ css: [String]) -> String {
        return UtilityPath.normalize(UtilityFunctional.toString(UtilityFunctional.intersperse(
            "/",
            css
        ) as [String]))
    }
    
    static func normalize(_ cs: String) -> String {
        return cs.replacingOccurrences(
            of: "/{2,}",
            with: "/",
            options: .regularExpression
        )
    }
}
