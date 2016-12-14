//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day21_IslandPerimeter_463 : NSObject {
    /// You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
    
    /// 题目大意：
    /// 给定一个二维地图，1表示陆地，0表示水域。单元格水平或者竖直相连（不含对角线）。地图完全被水域环绕，只包含一个岛屿（也就是说，一个或者多个相连的陆地单元格）。岛屿没有湖泊（岛屿内部环绕的水域）。单元格是边长为1的正方形。地图是矩形，长宽不超过100。计算岛屿的周长。
    /// Example:
    
    /*  
        [[0,1,0,0],
        [1,1,1,0],
        [0,1,0,0],
        [1,1,0,0]]
    */
    
    /// Answer: 16
    /// Explanation: The perimeter is the 16 yellow stripes in the image below:
    
    /// 解题思路:一个岛屿的边长是4,但是如果他存在一个邻居,那么总边长-2
    /// 不重复的计算邻居的做法:每个岛屿都计算其下方和后方是否存在岛屿
    
    private class func islandPerimeter(_ grid: [[Int]]) -> Int {
        var lands = 0
        var neighbours = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    lands += 1
                    if i < grid.count - 1 && grid[i+1][j] == 1{
                        neighbours += 1
                    }
                    if j < grid[i].count - 1 && grid[i][j+1] == 1{
                        neighbours += 1
                    }
                }
            }
        }
        return lands * 4 - neighbours * 2
    }
    
    
    class func solution() {
        let grid = [[1],[0]];
        let result = self.islandPerimeter(grid)
        print("\(self .className())`s result is \(result)")
    }
}
