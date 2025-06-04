//
//  GymClothes.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/13/25.
//

import Foundation

func gymClothes(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var cantMan: [Int] = []
       var borrowMan: [Int] = []
       let realLost = lost.filter { !reserve.contains($0) }.sorted()
       let doubleClothes = reserve.filter { !lost.contains($0) }

       for l in realLost {
           let bl = l - 1
           let al = l + 1

            if borrowMan.contains(bl) { // 이전 사람이 빌려준 사람인지 체크
               if borrowMan.contains(al) { // 앞에 사람이 빌려준 사람인지 체크
                   cantMan.append(l)
               } else {
                   if doubleClothes.contains(al) {
                       borrowMan.append(al)
                   } else {
                       cantMan.append(l)
                   }
               }
           } else { // 이전 사람이 빌려준 사람이 아닐때
               if doubleClothes.contains(bl) { // 두개 있는 사람인지 체크
                   borrowMan.append(bl)
               }
           else if doubleClothes.contains(al) && !borrowMan.contains(al) {
               borrowMan.append(al)
           }
                else { // 두개 있지도 않다.
                   cantMan.append(l)
               }
           }
       }

       return n - cantMan.count
    
}
