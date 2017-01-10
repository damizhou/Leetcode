//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day27_AddStrings_415 : NSObject {
    /// A binary watch has 4 LEDs on the top which represent the hours (0-11), and the 6 LEDs on the bottom represent the minutes (0-59).
    /// Each LED represents a zero or one, with the least significant bit on the right.
    /// Given a non-negative integer n which represents the number of LEDs that are currently on, return all possible times the watch could represent.
    
    /// 题目大意：
    /// 一个二进制手表顶端有4盏LED灯表示小时(0-11)，底部有6盏LED灯表示分钟(0-59)。
    /// 每一盏LED灯表示一个0或1，最右端为最低位。
    /// 给定一个非负整数n表示当前燃亮的LED灯数，返回所有可能表示的时间。
    
    /// Example:
    /// Input: n = 1
    /// Return: ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"]

    /// 解题思路:枚举小时h和分钟m，然后判断二进制1的个数是否等于num
    
    private class func addStrings(_ num1: String, _ num2: String) -> String {
        var i = num1.characters.count - 1
        var j = num2.characters.count - 1
        var carry = 0
        var res = ""
        while(i >= 0 || j >= 0 || carry != 0){
            var sum = 0
            if i >= 0 {
                sum = Int(String(num1[num1.index(num1.startIndex, offsetBy: i)]))!
                i -= 1;
            }
            if j >= 0 {
                sum += Int(String(num2[num2.index(num2.startIndex, offsetBy: j)]))!
                j -= 1;
            }
            sum += carry;
            carry = sum / 10;
            sum = sum % 10;
            res = "\(sum)" + res;
        }
        return res;
    }
    
    class func solution() {
        let num1 = "222"
        let num2 = "1111"
        let result = self.addStrings(num1,num2)
        print("\(self .className())`s result is \(result)")
        
        
        
    }
}
