//
//  GetoutDeliveryBox.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/8/25.
//

import Foundation

func getoutDeliveryBox(_ n:Int, _ w:Int, _ num:Int) -> Int {
    
    
    let h = n / w // 높이
    
    
    var f = (num - 1) / w + 1 //
    let remain = num % w
    
    let u = h - f //해당 박스 위에 있는 박스의 개수 (나머지 빼고)
    if n % w == 0 {
        return u + 1
    } else {
        let boxLeftDistance = f % 2 == 0 ? remain : w - remain + 1
        
        let endRemain = n % w // 4
        let endLeftDistance = (n / w) % 2 == 0 ? endRemain : w - endRemain + 1
        
        return (boxLeftDistance >= endLeftDistance ? u : u + 1) + 1
    }
}
