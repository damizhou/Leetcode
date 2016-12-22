//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day24_HammingDistance_461 : NSObject {
    /// The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
    /// Given two integers x and y, calculate the Hamming distance. 
    
    /// 题目大意:给你两个数,找出他们二进制下不同的位数的个数
    
    /// Note:
    /// 0 ≤ x, y < 2^31. 注意数字不大于2的31次方.即用int表示即可
    
    /// Example:
    
    /// Input: x = 1, y = 4
    
    /// Output: 2
    
    /// Explanation:
    /// 1   (0 0 0 1)
    /// 4   (0 1 0 0)
    ///        ↑   ↑
    
    /// The above arrows point to positions where the corresponding bits are different.

    /// 解题思路:递归两个数的每一个二进制位,相同位结果不变,不同位结果+1
    
    private class func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var result = 0
        var newX = x
        var newY = y
        while newX != 0 || newY != 0 {
            result += dealNumber(newX, newY)
            newX /= 2
            newY /= 2
        }
        return result
    }
    
    class func dealNumber(_ x: Int, _ y: Int) -> Int{
        if x % 2 == y % 2 {
            return 0
        }else{
            return 1
        }
    }
    
    class func solution() {
        let x = 3
        let y = 1
        let result = self.hammingDistance(x,y)
        print("\(self .className())`s result is \(result)")
    }
}
