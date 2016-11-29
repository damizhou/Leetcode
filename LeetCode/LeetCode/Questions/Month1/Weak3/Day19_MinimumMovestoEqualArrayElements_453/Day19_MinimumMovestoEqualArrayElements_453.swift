//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day19_MinimumMovestoEqualArrayElements_453 : NSObject {
    /// Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.给出一个整数的数组,判断其中有没有重复的元素,有就返回true,没有就返回false.
    
    /// 解题思路: hash表

    /// - Parameter nums: 给定整数数组
    /// - Returns: 是否存在相同元素
    
    private class func minMoves(_ nums: [Int]) -> Int {
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
    
    class func solution() {
        let s = [1,3,2];
        let result = self.minMoves(s)
        print("\(self .className())`s result is \(result)")
    }
}
