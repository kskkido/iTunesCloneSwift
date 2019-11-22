//
//  File.swift
//  ItunesClone
//
//  Created by Keisuke Kido on 11/18/19.
//  Copyright © 2019 kskkido. All rights reserved.
//

struct UtilityFunctional {
    static func tap<D>(_ fn: (D) -> Void, _ x: inout D) -> D {
        fn(x)
        return x
    }
    
    static func prependToAll<A>(_ y: A, _ xs: [A]) -> [A] {
        var arr: [A] = []
        
        for x in xs {
            arr.append(y)
            arr.append(x)
        }
        
        return arr
    }
    
    static func intersperse<A>(_ x: A, _ xs: [A]) -> [A] {
        return tail(prependToAll(x, xs))
    }
    
    static func tail<A>(_ xs: [A]) -> [A] {
        return Array(xs[(minOf(xs.count, 1))...])
    }
    
    static func minOf(_ n: Int, _ o: Int) -> Int {
        return n > o ? o : n
    }
    
    static func maxOf(_ n: Int, _ o: Int) -> Int {
        return n < o ? o : n
    }
    
    static func toString<A: LosslessStringConvertible>(_ xs: [A]) -> String {
      return xs.reduce("") { $0 + String($1) }
    }
}
