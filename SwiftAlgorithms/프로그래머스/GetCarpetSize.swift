//
//  GetCarpetSize.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/11/25.
//

import Foundation


func getCarpetSize(_ brown: Int, _ yellow: Int) -> [Int] {
    let total = brown + yellow
        
        var h = 0
        var w = 0

        for i in 1...yellow {
            if yellow % i == 0 {
                h = i
                w = yellow / i
                
                if (h + 2) * (w + 2) == total {
                    h = h + 2
                    w = w + 2
                    return [w, h]
                }
            }
        }
        return []
}
