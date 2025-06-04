//
//  MiningMinerals.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/16/25.
//

import Foundation


func miningMinerals(_ picks: [Int], _ minerals: [String]) -> Int {
    
    // 섹션 나누기
    var sections:[[String]] = []
    var section:[String] = []
    
    for m in minerals.indices {
        section.append(minerals[m])
        
        if section.count == 5 || m == minerals.count-1 {
            sections.append(section)
            section = []
        }
    }
    
    //섹션별 피로도 구하기
    var sectionFatigue:[Int] = []
    for sec in sections {
        var f = 0
        for s in sec {
            if s == "diamond" {
                f += 25
            } else if s == "iron" {
                f += 5
            } else {
                f += 1
            }
        }
        sectionFatigue.append(f)
    }
    
    var fatigueWithSections: [(Int, [String])] = []
    for i in sections.indices {
        fatigueWithSections.append((sectionFatigue[i], sections[i]))
    }
    
    let usableCount = picks.reduce(0, +)
    
    let prefixMinerals = Array(fatigueWithSections.prefix(usableCount))
    let sortedSections = prefixMinerals.sorted { $0.0 > $1.0 }


    
    
    //곡괭이 배치하기
    var totalFatigue:Int = 0
    
    var diaPickCount = picks[0]
    var ironPickCount = picks[1]
    var stonePickCount = picks[2]
    
    for (_, minerals) in sortedSections {
        if diaPickCount > 0 {
            totalFatigue += fatigue(minerals, with: "diamond")
            diaPickCount -= 1
        } else if ironPickCount > 0 {
            totalFatigue += fatigue(minerals, with: "iron")
            ironPickCount -= 1
        } else if stonePickCount > 0 {
            totalFatigue += fatigue(minerals, with: "stone")
            stonePickCount -= 1
        } else {
            break // 곡괭이 없음
        }
    }

    return totalFatigue
}

func fatigue(_ minerals: [String], with pick: String) -> Int {
    var fatigue = 0
    for m in minerals {
        switch (pick, m) {
        case ("diamond", _): fatigue += 1
        case ("iron", "diamond"): fatigue += 5
        case ("iron", _): fatigue += 1
        case ("stone", "diamond"): fatigue += 25
        case ("stone", "iron"): fatigue += 5
        case ("stone", "stone"): fatigue += 1
        default: break
        }
    }
    return fatigue
}
