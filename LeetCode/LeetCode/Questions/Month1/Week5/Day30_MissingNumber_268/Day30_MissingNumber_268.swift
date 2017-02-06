//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day30_MissingNumber_268 : NSObject {
    /// For a web developer, it is very important to know how to design a web page's size. So, given a specific rectangular web page’s area, your job by now is to design a rectangular web page, whose length L and width W satisfy the following requirements:
    /// 给定矩形的面积area，返回矩形的长度L和宽度W，使得L和W的差值最小。

    /// 1. The area of the rectangular web page you designed must equal to the given target area.
    /// 2. The width W should not be larger than the length L, which means L >= W.
    /// 3. The difference between length L and width W should be as small as possible.
    
    /// You need to output the length L and the width W of the web page you designed in sequence.
    
    /// Example:
    /// Input: 4
    /// Output: [2, 2]
    /// Explanation: The target area is 4, and all the possible ways to construct it are [1,4], [2,2], [4,1].
    /// But according to requirement 2, [1,4] is illegal; according to requirement 3,  [4,1] is not optimal compared to [2,2]. So the length L is 2, and the width W is 2.
    /// Note:
    /// The given area won't exceed 10,000,000 and is a positive integer.给定面积是正整数并且不超过10,000,000
    /// The web page's width and length you designed must be positive integers.长度和宽度必须是正整数
    
    let a : Array = [1]
    private class func missingNumber(_ nums: [Int]) -> Int {
        var sum = 0
        for i in nums {
            sum += i
        }
        return nums.count * (nums.count + 1) / 2 - sum
    }
    
    class func solution() {
        let nums = [0,1,2,3,4,5,6,8]
        let result = self.missingNumber(nums)
        print("\(self .className())`s result is \(result)")
    }
}
