//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day28_NumberComplement_476 : NSObject {
    /// Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
    /// 给定一个正整数，输出其补数。补充策略就是按二进制位反转。
    /// Note:
    /// The given integer is guaranteed to fit within the range of a 32-bit signed integer.给定正数确保是32位带符号整数。
    /// You could assume no leading zero bit in the integer’s binary representation.可以假设整数的二进制表示不包含前导0。

    /// 解题思路:按二进制位反转
    
    private class func findComplement(_ num: Int) -> Int {
        var mask = ~0
        while (num & mask != 0){
            mask <<= 1
        }
        return ~mask & ~num
    }
    
    class func solution() {
        let num = 5
        let result = self.findComplement(num)
        print("\(self .className())`s result is \(result)")
    }
}
