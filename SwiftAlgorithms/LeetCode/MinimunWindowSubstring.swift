//
//  MinimunWindowSubstring.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/5/25.
//

import Foundation

func minimumWindowSubstring(_ s: String, _ t: String) -> String {
    
    if s.count < t.count {
        return ""
    }

    var need: [Character: Int] = [:]
    for c in t {
        need[c, default: 0] += 1
    }

    var sArray = Array(s)
    var missing = t.count
    var left = 0
    var minLen = Int.max
    var minStart = 0

    for right in 0..<sArray.count {
        let char = sArray[right]
        if let _ = need[char] {
            if need[char]! > 0 {
                missing -= 1
            }
            need[char]! -= 1
        } else {
            need[char] = -1
        }

        while missing == 0 {
            if right - left + 1 < minLen {
                minLen = right - left + 1
                minStart = left
            }

            let leftChar = sArray[left]
            if let _ = need[leftChar] {
                need[leftChar]! += 1
                if need[leftChar]! > 0 {
                    missing += 1
                }
            }
            left += 1
        }
    }
    return minLen == Int.max ? "" : String(sArray[minStart..<minStart + minLen])
    }
