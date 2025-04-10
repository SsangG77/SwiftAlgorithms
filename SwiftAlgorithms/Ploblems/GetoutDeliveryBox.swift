//
//  GetoutDeliveryBox.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/8/25.
//

import Foundation

func getoutDeliveryBox(_ n:Int, _ w:Int, _ num:Int) -> Int {
    print(" ----- start (n : \(n), w : \(w), num : \(num) ) ------")
    if n == num {
        return 1
    }
    
    let h = (n - 1) / w + 1 // 총 높이
    let remain = n % w // 나머지 박스
    let numRemain = num % w
    
    //꺼낼 박스가 포함된 줄
    let row = (num - 1) / w + 1 // 2

    //해당 박스를 포함한 위에 박스 개수
    let upRow = h - row + 1
//    if remain == 0 {
//        return upRow
//    }
    
    //마지막 박스가 짝수층인지 홀수층인지, 떨어진 거리
    // let endLeftDistance = h % 2 == 0 ? w - remain + 1 : remain
    let validRemain = remain == 0 ? w : remain
    let endLeftDistance = h % 2 == 0 ? w - validRemain + 1 : validRemain
    
    //해당 박스가 짝수층인지, 떨어진 거리
    // let numLeftDistance = row % 2 == 0 ? w - numRemain + 1 : numRemain
    let validNumRemain = numRemain == 0 ? w : numRemain
    let numLeftDistance = row % 2 == 0 ? w - validNumRemain + 1 : validNumRemain

    print("h : \(h)")
    print("row : \(row)")
    print("validRemain : ", validRemain)
    print("validNumRemain : ", validNumRemain)
    print("박스 거리 : ", numLeftDistance)
    print("막박스 거리 : ", endLeftDistance)
    
    if h % 2 == 0 { //높이가 짝수다.
        if numLeftDistance >= endLeftDistance {
            return upRow
        } else {
            return upRow - 1
        }
    } else {
        if numLeftDistance > endLeftDistance {
            return upRow - 1
        } else {
            return upRow
        }
    }
    
    
   
        
}
