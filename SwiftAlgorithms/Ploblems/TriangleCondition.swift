//
//  triangleCondition.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/5/25.
//

import Foundation


func triangleCondition(_ sides:[Int]) -> Int {
    let min = sides.max()! - sides.min()!
    let max = sides.reduce(0, +)
    
    print(min, max)
      
    return max - min - 1
}
