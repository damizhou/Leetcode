//
//  Day1_TwoSum.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/17.
//  Copyright © 2016年 pcz. All rights reserved.
//

import UIKit

class Day1_TwoSum_1: NSObject {

    
    /// 给定一个整数数组，以及一个目标数。要求返回两个不相同的位置，使得数组在这两个位置上的数之和为目标数。题目确保有唯一解。
    /// Example:
    /// Given nums = [2, 7, 11, 15], target = 9,
    /// Because nums[0] + nums[1] = 2 + 7 = 9,
    /// return [0, 1].
    /// 解题思路: 维护一个字典,将之前的
    ///
    ///
    ///
    ///
    ///
    ///
    /// - parameter nums:   整数数组
    /// - parameter target: 目标数
    ///
    /// - returns: 位置数组
    private class func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hash: [Int : Int] = [:]
        var resArray : [Int] = []
        
        for (i, j) in nums.enumerated() {
            if let index = hash[target - j]{
                resArray.append(index)
                resArray.append(i)
                return resArray
            }
            hash[j] = i
            
        }
        return resArray;
    }
    
    
    class func solution() {
        let a = [3,11,2,4,1,5,6,7,8,9,10]
        let b = 21
        let c = self.twoSum(a, b)
        print(c)
    }
}
