//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class LongestPalindrome_409: NSObject {
    /// Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
    /// This is case sensitive, for example "Aa" is not considered a palindrome here.
    /// 给定一个只包含小写或者大写字母的字符串，寻找用这些字母可以组成的最长回文串的长度。
    /// 大小写敏感，例如"Aa"在这里不认为是一个回文。
    
    /// Note:
    /// Assume the length of given string will not exceed 1,010.假设最大字节为1010
    
    /// Example:
    
    /// Input:
    /// "abccccdd"
    
    /// Output:
    /// 7
    
    /// Explanation:
    /// One longest palindrome that can be built is "dccaccd", whose length is 7.
    
    /// 解题思路:统计每个字母的出现次数：若字母出现偶数次，则直接累加至最终结果,若字母出现奇数次，则将其值-1之后累加至最终结果
    /// 若存在出现奇数次的字母，将最终结果+1
    ///
    /// - Parameter s: 给定字符串
    /// - Returns: 最长回文串的长度
    
    static func longestPalindrome(_ s: String) -> Int {
        var length = 0
        var haveSingular = false
        var cnts : [Int] = [Int](repeating: 0, count: 58)
        for i in s.utf8 {
            cnts[i.hashValue - 65] += 1
        }
        
        for num in cnts {
            if num % 2 == 1 {
                length += (num - 1)
                haveSingular = true
            }else{
                length += num
            }
        }
        if haveSingular {
            length += 1
        }
        return length
    }

}
