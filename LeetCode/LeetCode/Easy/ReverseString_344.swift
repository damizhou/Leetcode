//
//  Day1_ReverseString_344.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/20.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation
class ReverseString_344: NSObject {
    
    /// 给定一个字符串。倒序输出.
    /// Example:
    /// Given s = "hello", return "olleh".
    /// 解题思路:swift存在直接可用的函数,一般思路为遍历字符串前半部分,将第i个字符和length-i个字符交换.
    /// - parameter s: 给定字符串
    ///
    /// - returns: 倒序数组
    static func reverseString(s: String) -> String {
        return String(s.characters.reversed());
    }
}
