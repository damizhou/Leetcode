//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day9_MoveZeroes_283: NSObject {
    /// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.给你一个整数数组,将其中的0放到最后面,非零元素的相对位置不能改变.
    /// For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
    /// Note:
    /// You must do this in-place without making a copy of the array.


    /// 解题思路: 将所有非零元素向前压缩,最后将剩余的位数补0.

    /// - parameter nums:   给定整数数组
    private class func moveZeroes(_ nums: inout [Int]) {
        var pos = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[pos] = nums[i]
                pos += 1
            }
        }
        for i in pos..<nums.count {
            nums[i] = 0
        }
    }

    class func solution() {
        var nums = [0,1,0,0,2,0,0,0,3,10,0,1,0,9];
        moveZeroes(&nums)
        print(nums)
    }
}
