//
//  MoveZeros.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/7/25.
//

import Foundation


func moveZeroes(_ nums: inout [Int]) {
    var i = 0
    for j in 0..<nums.count {
        if nums[j] != 0 {
            nums[i] = nums[j]
            i += 1
        }
    }
    
    while(i < nums.count) {
        nums[i] = 0
        i += 1
    }
}


