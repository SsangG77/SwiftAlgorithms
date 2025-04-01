//
//  MixString.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 3/31/25.
//

import Foundation





func  mixString(_ str1:String, _ str2:String) -> String {
    var result = ""
    
    let str1Arr = str1.map { s in
        String(s)
    }
    
    let str2Arr = str2.map { s in
        String(s)
    }
    
    for i in 0...str1Arr.count - 1 {
        result = result + str1Arr[i] + str2Arr[i]
    }
    return result
}
