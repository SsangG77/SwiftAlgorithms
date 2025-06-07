//
//  ContainerWithMostWater.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/8/25.
//

import Foundation

func containerWithMostWater(_ height: [Int]) -> Int {
    var maxArea = 0
    var left = 0
    var right = height.count - 1
    
    while left < right {
        let width = right - left
        let currArea = min(height[left], height[right]) * width
        maxArea = max(maxArea, currArea)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right += 1
        }
        
    }
    return maxArea
}
