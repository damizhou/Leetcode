//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day22_IntersectionofTwoArraysII_350 : NSObject {
    /// Given two arrays, write a function to compute their intersection.
    
    /// 题目大意：
    /// 计算两个数组的交集
    
    /// Example:
    /// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].

    /// 解题思路:排序+双指针.
    /// 1. 遍历短数组,
    /// 2. 如果长数组的当前元素小于短数组的当前元素,长数组指针+1直到两个数组当前元素相同或者长数组当前元素大于短数组.
    /// 3. 判断长数组的指针是否越界
    /// 4. 判断两个数组的当前数组是否相同,相同长数组下标+1
    /// 5. 重复2-4直到遍历完短数组或者长数组的下标越界.
    
    private class func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var newNums1 = nums1.sorted()
        var newNums2 = nums2.sorted()
        var result : [Int] = []
        var j = 0
        
        if nums1.count < nums2.count {
            (newNums1,newNums2) = (newNums2,newNums1)
        }
        
        for i in 0..<newNums2.count {
            
            while j < newNums1.count && newNums1[j] < newNums2[i]{
                j += 1
            }
            if j == newNums1.count {
                return result
            }
            if newNums1[j] == newNums2[i] {
                result.append(newNums1[j])
                j += 1
            }
        }
        return result
    }
    
    
    class func solution() {
        let nums1 = [4,7,9,7,6,7]
        let nums2 = [5,0,0,6,1,6,2,2,4]
        let result = self.intersect(nums1,nums2)
        print("\(self .className())`s result is \(result)")
    }
}
