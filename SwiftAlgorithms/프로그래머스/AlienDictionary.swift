//
//  AlienDictionary.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 5/4/25.
//

import Foundation

func alienDictionary(_ spell:[String], _ dic:[String]) -> Int {
    
    for d in dic {
        let spellCount = spell.count
        var count = 0
        for s in spell {
            if d.contains(s) {
                count += 1
            }
        }
        if spellCount == count {
            return 1
        }
    }
    
    return 2
}
