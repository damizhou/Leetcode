//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day18_ContainsDuplicate_217 : NSObject {
    /// Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.给出一个整数的数组,判断其中有没有重复的元素,有就返回true,没有就返回false.
    
    /// 解题思路: hash表

    /// - Parameter nums: 给定整数数组
    /// - Returns: 是否存在相同元素
    
    private class func containsDuplicate(_ nums: [Int]) -> Bool {
        var hash: [Int : Int] = [:]
        
        for (i, j) in nums.enumerated() {
            if hash[j] != nil{
                return true
            }
            hash[j] = i
        }
        return false
    }
    
    class func solution() {
        let s = [3,3,4];
        let result = self.containsDuplicate(s)
        print("\(self .className())`s result is \(result)")
    }
}
