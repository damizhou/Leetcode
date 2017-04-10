//
//  Day2_Counting_Bits_338.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/18.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class CountingBits_338: NSObject {
    
    /// 给定一个非负整数num。 对于范围0≤i≤num中的每个数字i，计算它们的二进制表示中的1的数目，并将它们作为数组返回。
    /// Example:
    /// For num = 5 you should return [0,1,1,2,1,2].
    /// 解题思路:对于一个非负整数而言i,i*2即为i左移一位的数字.也就是说i*2与i具有相同二进制表示中的1的数目.那么i/2与i在除去i最后一位时也是具有二进制表示中的1的数目.最后一位是否为1,则可以由i % 2,或者 i & 1来判断. 即二进制表示中的1的数目存在数学关系f(x) = f(x / 2) + x & 1; 其中f(x)表示对于非负整数x而言二进制表示中的1的个数.
    
    /// - parameter num: 目标数
    ///
    /// - returns: 0...num中每个数字的二进制中的1的个数组成的数组
    static func countBits(_ num: Int) -> [Int] {
        if num == 0 {
            return [0]
        }
        var result : [Int] = [Int](repeating:0, count: num + 1)
        for i in 1...num {
            result[i] = result[i / 2] + i & 1;
        }
        return result;
    }
}
