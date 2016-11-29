//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day14_FirstUniqueCharacterinaString_387: NSObject {
    /// Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.给定一个字符串,输出第一个不重复的字符的位置,若没有输出-1.
    
    /// Examples:
    
    /// s = "leetcode"
    /// return 0.
    
    /// s = "loveleetcode",
    /// return 2.
    
    /// 解题思路:遍历字符串,统计每个字符出现的次数.再次遍历字符串,查找每个字符出现的次数.输出第一个次数为一的字符的位置,循环完成没有返回则输出-1.
    ///
    /// - Parameter s: 给定字符串
    /// - Returns: 返回的字符串第一个不重复字符的位置
    
    private class func firstUniqChar(_ s: String) -> Int {
        var min = 0
        var cnts : [Int] = [Int](repeating: 0, count: 26)
        for i in s.utf8 {
            cnts[i.hashValue - 97] += 1
        }
        for i in s.utf8 {
            if cnts[i.hashValue - 97] == 1 {
                return min
            }
            min += 1
        }
        return -1;
    }
    
    
    
    class func solution() {
        let s = "cc"
        let result = self.firstUniqChar(s)
        print("\(self .className())`s result is \(result)")
    }
}
