//
//  Fibonacci sequence.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/7/25.
//

import Foundation


func fibonacciSequence(_ n: Int) -> Int {
    var a = 0
    var b = 1

    if n == 1 {
       return 0
    }

    for _ in 2...n {
       let c = (a + b) % 1234567
       a = b
       b = c
    }

    return b
}

