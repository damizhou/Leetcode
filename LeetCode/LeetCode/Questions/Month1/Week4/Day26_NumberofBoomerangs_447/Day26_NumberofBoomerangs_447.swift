//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day26_NumberofBoomerangs_447 : NSObject {
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
    
    private class func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var x = 0, y = 0
        for point in points {
            x = point[0]
            y = point[1]
        }
        print(x,y)
        /*
         for x1, y1 in points:
             dmap = collections.defaultdict(int)
             for x2, y2 in points:
             dmap[(x1 - x2) ** 2 + (y1 - y2) ** 2] += 1
             for d in dmap:
             ans += dmap[d] * (dmap[d] - 1)
         return ans
         */
        return 0
    }
    
    
    class func solution() {
        let num = [[0,0],[1,0],[2,0]]
        let result = self.numberOfBoomerangs(num)
        print("\(self .className())`s result is \(result)")
    }
}
