//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day25_BinaryWatch_401 : NSObject {
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
    
    private class func readBinaryWatch(_ num: Int) -> [String] {
        var result : [String] = []
        for h in 0..<12 {
            for m in 0..<60 {
                
                let hour1 = String(h,radix:2).components(separatedBy: "1").count - 1
                let minute1 = String(m,radix:2).components(separatedBy: "1").count - 1

                if hour1 + minute1 == num {
                    result.append(String(format: "%d:%02d", h, m))
                }
            }
        }
        return result;
    }
    
    
    class func solution() {
        let num = 1
        let result = self.readBinaryWatch(num)
        print("\(self .className())`s result is \(result)")
    }
}
