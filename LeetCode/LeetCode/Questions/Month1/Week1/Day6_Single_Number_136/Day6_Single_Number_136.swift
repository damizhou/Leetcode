//
//  Day6_Single_Number_136.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/28.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day6_Single_Number_136: NSObject {

    /// 整数型数组中，每个元素均出现两次，除了一个元素例外，如何找出这个元素？能否设计一个线性时间的算法，且不需要额外的存储空间？
    
    /// nums = [1,1,2,2,3,3,4]
    /// Return: 4
    /// 解题思路:对所有数字进行异或运算
    
    /// - parameter nums: 整数数组
    ///
    /// - returns: 数组中唯一只出现了一次的数字
    class private func singleNumber(_ nums: [Int]) -> Int {
        var result : Int = 0
        for i in nums {
            result ^= i
        }
        return result
    }
    
    class func solution() {
        
        let a = [1,1,2,2,3,4,4,5,5]
        let result = self.singleNumber(a);
        print("\(self .className())`s result is \(result)")
    }
}
