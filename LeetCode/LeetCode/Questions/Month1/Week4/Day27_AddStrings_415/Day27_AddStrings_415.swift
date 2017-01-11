//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day27_AddStrings_415 : NSObject {
    /// Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.题目大意：将两个用字符串表示的数字相加
    
    /// Note:
    
    /// The length of both num1 and num2 is < 5100. num1和num2的长度不超过5100
    /// Both num1 and num2 contains only digits 0-9. num1和num2只包含0-9这10个数字
    /// Both num1 and num2 does not contain any leading zero.num1和num2不包含前导0
    /// You must not use any built-in BigInteger library or convert the inputs to integer directly.你不能使用内置的BigInteger库，也不能直接把输入转换为整数。

    /// 解题思路:模拟十进制的大数加法,注意进位
    
    private class func addStrings(_ num1: String, _ num2: String) -> String {
        let num1Chars = Array(num1.characters.reversed())
        let num2Chars = Array(num2.characters.reversed())
        var i = 0, j = 0, sum = 0, carry = 0
        var res = ""
        
        while i < num1Chars.count || j < num2Chars.count || carry != 0 {
            sum = carry
            if i < num1Chars.count {
                sum += Int(String(num1Chars[i]))!
                i += 1
            }
            if j < num2Chars.count {
                sum += Int(String(num2Chars[j]))!
                j += 1
            }
            carry = sum / 10
            sum = sum % 10
            
            res.append(String(sum))
        }
        
        return String(res.characters.reversed())
    }
    
    class func solution() {
        let num1 = "222"
        let num2 = "1111"
        let result = self.addStrings(num1,num2)
        print("\(self .className())`s result is \(result)")
        
        
        
    }
}
