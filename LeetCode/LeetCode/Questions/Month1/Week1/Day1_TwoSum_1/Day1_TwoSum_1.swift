//
//  Day1_TwoSum.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/17.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day1_TwoSum_1: NSObject {

    
    /// 给定一个整数数组，以及一个目标数。要求返回两个不相同的位置，使得数组在这两个位置上的数之和为目标数。题目确保有唯一解。
    /// Example:
    /// Given nums = [2, 7, 11, 15], target = 9,
    /// Because nums[0] + nums[1] = 2 + 7 = 9,
    /// return [0, 1].
    /// 解题思路: 维护一个字典,将之前的遍历过的数字储存起来.使用nums[i]作为key,i作为value.这样继续遍历新的数字事,就可以检查target - current_num是否在字典中,在的话就输出value和target - current_num.
    /// 该方法可以解决 两数相加和两数相乘等两个数位置可以互换的问题
    
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
    
    /* adasdasd */
    class func a() {
        
    }
    
    class func solution() {
        let nums = [3,11,2,4,1,5,6,7,8,9,10]
        let target = 21
        let result = self.twoSum(nums, target)
        print("\(self .className())`s result is \(result)")
    }
}
