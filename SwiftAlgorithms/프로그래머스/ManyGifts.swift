
import Foundation


func manyGifts(_ friends:[String], _ gifts:[String]) -> Int {
    
        var giveCount: [String: [String: Int]] = [:]
        var receiveCount: [String: [String: Int]] = [:]

        // 선물 주고받기 기록 정리
        for gift in gifts {
            let arr = gift.split(separator: " ").map { String($0) }
            let giver = arr[0]
            let receiver = arr[1]
            
            //let tomScore = scores["Tom", default: 0]
            giveCount[giver, default: [:]][receiver, default: 0] += 1
            receiveCount[receiver, default: [:]][giver, default: 0] += 1
        }

        // 선물 지수 계산
        var giftIndex: [String: Int] = [:]
        for f in friends {
            let giveTotal = giveCount[f]?.values.reduce(0, +) ?? 0
            let receiveTotal = receiveCount[f]?.values.reduce(0, +) ?? 0
            giftIndex[f] = giveTotal - receiveTotal
        }

        // 다음 달 받을 선물 수 계산
        var nextMonthGift: [String: Int] = [:]
        for i in 0..<friends.count {
            for j in i+1..<friends.count {
                let a = friends[i]
                let b = friends[j]

                let aToB = giveCount[a]?[b] ?? 0
                let bToA = giveCount[b]?[a] ?? 0

                if aToB > bToA {
                    nextMonthGift[a, default: 0] += 1
                } else if bToA > aToB {
                    nextMonthGift[b, default: 0] += 1
                } else {
                    let aIndex = giftIndex[a]!
                    let bIndex = giftIndex[b]!
                    if aIndex > bIndex {
                        nextMonthGift[a, default: 0] += 1
                    } else if bIndex > aIndex {
                        nextMonthGift[b, default: 0] += 1
                    }
                }
            }
        }

        return nextMonthGift.values.max() ?? 0
    

}



