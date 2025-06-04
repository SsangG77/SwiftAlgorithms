//
//  TableHashFunction.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/5/25.
//

import Foundation

func tableHashFunction(_ data: [[Int]], _ col: Int, _ row_begin: Int, _ row_end: Int) -> Int {
    let sortedData = data.sorted {
        if $0[col - 1] != $1[col - 1] {
            return $0[col - 1] < $1[col - 1]
        } else {
            return $0[0] > $1[0]
        }
    }

    var xor = 0

    for i in (row_begin - 1)...(row_end - 1) {
        let row = sortedData[i]
        let sum = row.reduce(0) { $0 + ($1 % (i + 1)) }
        xor ^= sum
    }

    return xor
}
