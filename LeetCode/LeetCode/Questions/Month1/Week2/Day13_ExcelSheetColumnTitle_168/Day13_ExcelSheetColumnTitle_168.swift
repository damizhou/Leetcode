//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day13_ExcelSheetColumnTitle_168: NSObject {
    /// Given a positive integer, return its corresponding column title as appear in an Excel sheet.给定一个数字,输出对应的字符串.
    
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
    
    /// 解题思路:本题可以类比为进制转换.将十进制转换为二十六进制.但是与正常的进制转换不同的是,在转换后的进制中最后一位和其他位的相同字符的含义并不一致.以A举例,当结果并非一位时,A在最后一位代表0,在其他位代表1.若结果只有一位A代表1.
    /// 因此:在循环的时候进行标记.判断当前的位数,如果是最后一位,取余结果-1
    ///
    /// - Parameter n: 给定整数
    /// - Returns: 返回的对应字符串
    
    private class func convertToTitle(_ n: Int) -> String {
        let str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var result = ""
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
        let n = 2
        let result = self.convertToTitle(n)
        print(result)
    }
}
