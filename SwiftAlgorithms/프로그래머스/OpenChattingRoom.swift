//
//  OpenChattingRoom.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/16/25.
//

import Foundation


func openChattingRoom(_ record:[String]) -> [String] {
    
    var members:[String:String] = [:]
    
    
    for r in record {
        let id = String(r.split(separator: " ")[1])
        
        if !r.contains("Leave") {
            members[id] = String(r.split(separator: " ")[2])
        }
    
    }
    
    
    print(members)
    
    var result:[String] = []
    for r in record {
        if !r.contains("Change") {
            let id = String(r.split(separator: " ")[1])
            let name = String(describing: members[id] ?? "")
            if r.contains("Enter") {
                result.append("\(name)님이 들어왔습니다.")
            } else {
                result.append("\(name)님이 나갔습니다.")
            }
        }
    }
    
    return result
}
