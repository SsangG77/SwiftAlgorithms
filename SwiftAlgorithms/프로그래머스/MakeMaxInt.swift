//
//  MakeMaxInt.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/14/25.
//

import Foundation


func makeMaxInt(_ numbers:[Int]) -> String {
    
    let newArr = numbers.map { String($0) }.sorted { $0 + $1 > $1 + $0 }
    
    let result = newArr.joined()
    
    return result.first == "0" ? "0" : result
}
