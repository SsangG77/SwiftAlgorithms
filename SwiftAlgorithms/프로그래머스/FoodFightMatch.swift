//
//  FoodFightMatch.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/5/25.
//

import Foundation



func foodFightMatch(_ food:[Int]) -> String {
    
    var result:[String] = []
    
    for i in 1..<food.count {
        let count = food[i] / 2
       result.append(contentsOf: Array(repeating: String(i), count: count))
    }
    
    return result.joined() + "0" + result.joined().reversed()
}
