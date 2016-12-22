//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day23_FindAllNumbersDisappearedinanArray_448 : NSObject {
    /// Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
    /// Find all the elements of [1, n] inclusive that do not appear in this array.
    /// Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
    /// 给定一个整数数组，其中1 ≤ a[i] ≤ n (n = 数组长度)，一些元素出现两次，其他的出现一次。
    /// 寻找所有[1, n]中没有出现在数组中的元素。
    /// 可以不使用额外空间并在O(n)运行时间求解吗？你可以假设返回列表不算额外空间。
  
    /// Example:
    /// Input:
    /// [4,3,2,7,8,2,3,1]
    /// Output:
    /// [5,6]

    /// 解题思路:把原数组中出现的数其应该所在的位置上置为负值，然后重新遍历如果大于0，则表示从未出现过。
    
    private class func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var newNums = nums
        var result = [Int]()
        for i in newNums {
            newNums[abs(i)-1] = -abs(newNums[abs(i)-1])
        }
        for i in 0..<newNums.count{
            if newNums[i] > 0 {
                result.append(i+1)
            }
        }
        return result
    }
    
    
    class func solution() {
        let nums : [Int] = []
        let result = self.findDisappearedNumbers(nums)
        print("\(self .className())`s result is \(result)")
    }
}
