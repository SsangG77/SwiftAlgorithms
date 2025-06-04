//
//  CleanWallpaper.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/6/25.
//

import Foundation


func cleanWallpaper(_ wallpaper:[String]) -> [Int] {
    
    var lessLux = -1
    var lessLuy = -1
    var lessRdx = -1
    var lessRdy = -1
    
    for i in 0..<wallpaper.count {
        let lu = wallpaper[i].map { $0 }
        for j in 0..<lu.count {
            
            if lu[j] == "#" {
                
                if lessLux == -1 {
                    lessLux = i
                }
                
                if lessLuy == -1 {
                    lessLuy = j
                }
                if lessLux != -1 && lessLuy != -1 {
                    if i < lessLux {
                        lessLux = i
                    }
                    if j < lessLuy {
                        lessLuy = j
                    }
                }
                
                if i > lessRdx {
                    lessRdx = i
                }
                if j > lessRdy {
                    lessRdy = j
                }
            }
        }
    }
    
    return [lessLux, lessLuy, lessRdx + 1, lessRdy + 1]
}


