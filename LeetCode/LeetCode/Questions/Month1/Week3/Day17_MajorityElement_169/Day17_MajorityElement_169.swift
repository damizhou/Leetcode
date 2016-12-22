//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day17_MajorityElement_169: NSObject {
    /// Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times. 寻找一个整数数组的众数,众数是指该元素出现的次数大于数组长度的1/2的数字.
    ///You may assume that the array is non-empty and the majority element always exist in the array. 数组不为空,且众数一定存在.
    
    /// 解题思路:投票算法.设定两个变量element和count。element保存当前可能的候选众数，count保存该候选众数的出现次数。
    /// 遍历数组num。
    /// 如果当前的数字i与候选众数element相同，则将计数count + 1
    /// 否则，如果当前的候选众数element为空，或者count为0，则将候选众数element的值置为e，并将计数count置为1。
    /// 否则，将计数count - 1
    /// 最终留下的候选众数element即为最终答案。

    /// - Parameter s: 给定整数数组
    /// - Returns: 位众数的元素值
    
    private class func majorityElement(_ nums: [Int]) -> Int {
        var element = 0
        var count = 0
        for i in nums {
            if count == 0 {
                element = i
                count += 1
            }else if i == element{
                count += 1
            }else{
                count -= 1
            }
        }
        return element
    }
    
    
    class func solution() {
        let s = [3,3,4];
        let result = self.majorityElement(s)
        print("\(self .className())`s result is \(result)")
    }
}
