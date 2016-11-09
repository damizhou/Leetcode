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
    /// 702 -> ZZ
    /// 解题思路
    ///
    /// - Parameter n: <#n description#>
    /// - Returns: <#return value description#>
    
    private class func convertToTitle(_ n: Int) -> String {
        let str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var result : String = String()
        var newN = n - 1
        var remainder = 0
        while newN > 25 {
            remainder = newN % 26
            newN /= 26
            let index = str.index(str.startIndex, offsetBy: remainder)
            print(str[index])
            result = String(str[index]) + result
        }
        if remainder == 25 {
            remainder = newN - 1
            let index = str.index(str.startIndex, offsetBy: remainder)
            result = String(str[index]) + result
        }else{
            remainder = newN
            let index = str.index(str.startIndex, offsetBy: remainder)
            result = String(str[index]) + result
        }
//        
//        print(str[index])
        
        return result
    }

    
    
    class func solution() {
        let n = 26
        let result = self.convertToTitle(n)
        print(result)
    }
}
