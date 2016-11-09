//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day13_ExcelSheetColumnTitle_168: NSObject {
    /// Given a positive integer, return its corresponding column title as appear in an Excel sheet.
    
    /// For example:
    
    /// 1 -> A
    /// 2 -> B
    /// 3 -> C
    /// ...
    /// 26 -> Z
    /// 27 -> AA
    /// 28 -> AB
    /// 52 -> AZ
    /// 702 -> ZZ
    /// 703 -> AAA
    
    /// 解题思路:待思考
    ///
    /// - Parameter n: 给定整数
    /// - Returns: 返回的对应字符串
    
    private class func convertToTitle(_ n: Int) -> String {
        let str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var result : String = String()
        var newN = n - 1
        var remainder = 0
        var j = 0
        repeat {
            newN -= j
            remainder = newN % 26
            newN /= 26
            let index = str.index(str.startIndex, offsetBy: remainder)
            j = 1
            result = String(str[index]) + result
        } while newN > 0
        return result
    }

    
    
    class func solution() {
        let n = 703
        let result = self.convertToTitle(n)
        print(result)
    }
}
