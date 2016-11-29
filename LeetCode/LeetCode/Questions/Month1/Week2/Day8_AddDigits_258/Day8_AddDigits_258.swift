//
//  Day1_TwoSum.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/17.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day8_AddDigits_258: NSObject {

    /// Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.给定一个非负整数,将其每一位相加,只到计算结果为个位数.
    /// For example:
    /// Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.
    /// Follow up:
    /// Could you do it without any loop/recursion in O(1) runtime? 能否使用复杂度为1的算法
    
    /// 解题思路: 观察0-20的输出
    /// in  out
    /// 1    1
    /// 2    2
    /// 3    3
    /// 4    4
    /// 5    5
    /// 6    6
    /// 7    7
    /// 8    8
    /// 9    9
    /// 10   1
    /// 11   2
    /// 12   3
    /// 13   4
    /// 14   5
    /// 15   6
    /// 16   7
    /// 17   8
    /// 18   9
    /// 19   1
    /// 20   2
    /// 可以发现每9个一循环，从1~9.因为对9取余的结果为0~8的循环,因此可以将结果的循环视为对9取余的结果+1,所有大于9的数的结果都是对9取余，那么对于9的倍数的数对9取余就是0了，为了得到其本身，而且同样也要对大于9的数适用，我们就用(n-1)%9+1这个表达式来包括所有的情况.
    
    /// - parameter num:   给定整数
    ///
    /// - returns: 计算结果
    private class func addDigits(_ num: Int) -> Int {
        return (num - 1) % 9 + 1
    }
    
    class func solution() {
        let nums = 0
        let result = self.addDigits(nums)
        print("\(self .className())`s result is \(result)")
    }
}
