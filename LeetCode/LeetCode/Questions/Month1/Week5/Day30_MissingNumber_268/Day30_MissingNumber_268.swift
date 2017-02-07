//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day30_MissingNumber_268 : NSObject {
    /// Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.给定一个包含从0, 1, 2, ..., n, 选出的n个不同数字的数组，从中找出数组中缺失的那一个数。
    
    /// For example,
    /// Given nums = [0, 1, 3] return 2.给定 nums = [0, 1, 3] 返回2。
    
    /// Note:
    /// Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
    /// 你的算法应该满足线性时间复杂度。你可以只使用常数空间复杂度完成此题吗？
    
    private class func missingNumber(_ nums: [Int]) -> Int {
//        var sum = 0
//        for i in nums {
//            sum += i
//        }
//        return nums.count * (nums.count + 1) / 2 - sum

        return nums.count * (nums.count + 1) / 2 - nums.reduce(0, +)
    }
    
    class func solution() {
        let nums = [0,1,2,3,4,5,6,8]
        let result = self.missingNumber(nums)
        print("\(self .className())`s result is \(result)")
    }
}
