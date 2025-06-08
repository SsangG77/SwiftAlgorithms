//
//  NumberIsland.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/9/25.
//

import Foundation

func numberIsland(_ g: [[Character]]) -> Int {
    
    var grid = g
    
    if grid.count == 0 {
        return 0
    }
    
    let rows = grid.count
    let cols = grid[0].count
    var count = 0
    
    func dfs(_ row: Int, _ col: Int) {
        if row < 0 || col < 0 || row >= rows || col >= cols || grid[row][col] == "0" {
            return
        }
        
        grid[row][col] = "0"
        
        dfs(row + 1, col)
        dfs(row - 1, col)
        dfs(row, col + 1)
        dfs(row, col - 1)
        
    }
    
    for i in 0..<rows {
        for j in 0..<cols {
            if grid[i][j] == "1" {
                count += 1
                dfs(i, j)
            }
        }
    }
    
    return count
    
}



