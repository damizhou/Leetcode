//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class IntersectionofTwoArrays_349: NSObject {
    /// Given two arrays, write a function to compute their intersection.给出两个数组,求两个数组的交集
    
    /// Example:
    /// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
    
    /// Note:
    /// Each element in the result must be unique.结果中每个元素必须是唯一的.
    /// The result can be in any order.结果可以无序
    
    
    /// 解法1:哈希表存储.遍历其中一个数组,判断其中的元素是否在另一个数组和哈希表中,如果该元素在另一个数组且不在哈希表中,该元素则为目标元素.
    ///
    /// - parameter nums1: 第一个数组
    /// - parameter nums2: 第二个数组
    ///
    /// - returns: 交集数组
    static func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var hash : [Int:Int] = [Int:Int]()
        
        for i in nums2 {
            if nums1.contains(i) && hash[i] == nil{
                    result.append(i)
                    hash[i] = 1
            }
        }
        return result
    }
    
    /// 解法2:利用集合可以删除特定元素的特性
    static func intersection2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var nums1Set = Set(nums1)
        
        for i in nums2 {
            if nums1Set.contains(i) {
                result.append(i)
                nums1Set.remove(i)
                print(nums1Set)
                if nums1Set.count == 0 {
                    break
                }
            }
        }
        return result
    }
}
