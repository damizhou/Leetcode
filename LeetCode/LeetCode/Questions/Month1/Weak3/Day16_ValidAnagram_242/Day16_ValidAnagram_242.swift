//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day16_ValidAnagram_242: NSObject {
    /// Given two strings s and t, write a function to determine if t is an anagram of s.给你两个字符串.判断第二个字符串,是不是第一个字符串的乱序组合.
    
    /// For example,
    /// s = "anagram", t = "nagaram", return true.
    /// s = "rat", t = "car", return false.
    
    /// Note:
    /// You may assume the string contains only lowercase alphabets.
    
    /// 解题思路:统计s字符串每个字母的出现次数,记录到一个数组中,每个字符出现一次,数组对应的元素+1.再遍历t字符串中的每个字符,计数数组应位置的元素-1,如果有元素小于0,返回false.遍历完t字符串后,再次遍历计数数组.如果有元素的值不等于0,返回false.如果上述条件都不满足,返回true
    ///
    /// - Parameter s: 给定字符串s
    /// - Parameter t: 给定字符串t
    /// - Returns: t 是否为 s的乱序字符串
    
    private class func isAnagram(_ s: String, _ t: String) -> Bool {
        var cnts : [Int] = [Int](repeating: 0, count: 26)
        for i in s.utf8 {
            cnts[i.hashValue - 97] += 1
        }
        for i in t.utf8 {
            cnts[i.hashValue - 97] -= 1
            if cnts[i.hashValue - 97] < 0 {
                return false
            }
        }
        for i in cnts {
            if i != 0 {
                return false
            }
        }
        return true
    }
    
    
    class func solution() {
        let s = "asdaaa"
        let t = "dsa"
        let result = self.isAnagram(s,t)
        print(result)
    }
}
