//
//  NextPermission.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/5/25.
//

import Foundation

func nextPermutation(_ nums: inout [Int]) {
    var i = nums.count - 2

    while i >= 0 && nums[i] >= nums[i + 1] {
        i -= 1
    }

    if i >= 0 {
        var j = nums.count - 1
        while nums[j] <= nums[i] {
            j -= 1
        }
        nums.swapAt(i, j)
    }

    var left = i + 1
    var right = nums.count - 1
    while left < right {
        nums.swapAt(left, right)
        left += 1
        right -= 1
    }
}
