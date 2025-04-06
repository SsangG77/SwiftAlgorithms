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
    
    if n == 2 {
        return 1
    }
      for _ in 2...n-1 {
        let c = a + b
          a = b
          b = c
      }
      
    
      
    return (a + b) % 1234567
}

