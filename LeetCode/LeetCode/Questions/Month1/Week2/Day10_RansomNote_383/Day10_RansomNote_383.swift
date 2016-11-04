//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day10_RansomNote_383: NSObject {
    /// Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
    
    /// Each letter in the magazine string can only be used once in your ransom note.
    
    /// Note:
    /// You may assume that both strings contain only lowercase letters.
    
    /// canConstruct("a", "b") -> false
    /// canConstruct("aa", "ab") -> false
    /// canConstruct("aa", "aab") -> true

    /// 题目大意：
    /// 给定两个字符串ransomNote和magazine，编写函数判断magazine中的字符是否可以完全包含ransomNote中的字符。
    /// 注意：可以假设字符串中只包含小写字母。
    
    /// 解题思路:遍历magazine字符串中的所有字符,记录到一个数组中,每出现一次某个字符,数组中对应的元素 +=1.
    /// 然后,遍历ransomNote中的字符,每出现一次某个字符,就到刚才记录的数组中在对应元素 -= 1.
    /// 如果出现某个元素的值为 -1,则证明magazine中的字符无法组成ransomNote.

    /// - parameter ransomNote  :   目标字符串
    /// - parameter magazine    :   原料字符串

    /// - returns: 原料是否满足目标
    private class func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var cnts : [Int] = [Int](repeating: 0, count: 26)
        for i in magazine.unicodeScalars {
            cnts[i.hashValue - 97] += 1
        }
        
        for i in ransomNote.unicodeScalars {
            cnts[i.hashValue - 97] -= 1
            if cnts[i.hashValue - 97] < 0{
                return false
            }
        }
        return true
    }
    
    class func solution() {
        let ransomNote = "aab"
        let magazine = "aabbb"
        let result = self.canConstruct(ransomNote, magazine)
        print(result)
    }
}
