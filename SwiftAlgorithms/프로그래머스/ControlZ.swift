//
//  ControlZ.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/4/25.
//

import Foundation


/*
 1 ≤ s의 길이 ≤ 200
 -1,000 < s의 원소 중 숫자 < 1,000
 s는 숫자, "Z", 공백으로 이루어져 있습니다.
 s에 있는 숫자와 "Z"는 서로 공백으로 구분됩니다.
 연속된 공백은 주어지지 않습니다.
 0을 제외하고는 0으로 시작하는 숫자는 없습니다.
 s는 "Z"로 시작하지 않습니다.
 s의 시작과 끝에는 공백이 없습니다.
 "Z"가 연속해서 나오는 경우는 없습니다.
 입출력 예
 s    result
 "1 2 Z 3"    4
 "10 20 30 40"    100
 "10 Z 20 Z 1"    1
 "10 Z 20 Z"    0
 "-1 -2 -3 Z"    -3
 */


func controlZ(_ s:String) -> Int {
    
    let separate = s.split(separator: " ")
    
    var arr: [String] = []
    
    for i in 0...separate.count-1 {
        if separate[i] == "Z" {
            arr.removeLast()
        } else {
            arr.append(String(separate[i]))
        }
    }
    
    let result = arr.map { Int($0) ?? 0 }.reduce(0, +)
    
    print(arr)
    return result
}
