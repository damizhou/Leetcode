//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class MinimumMovestoEqualArrayElements_453 : NSObject {
    //TODO:<#text#>
    
    static func minMoves(_ nums: [Int]) -> Int {
        var min = nums[0]
        var result = 0
        for i in nums {
            if i < min {
                min = i
            }
        }
        for i in nums{
            result += (i - min)
        }
        return result
    }
}
