//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class ExcelSheetColumnNumber_171: NSObject {
    /// Related to question Excel Sheet Column Title.给定一个字符串,得出对应的数字
    
    /// Given a column title as appear in an Excel sheet, return its corresponding column number.
    
    /// For example:
    
    /// A -> 1
    /// B -> 2
    /// C -> 3
    /// ...
    /// Z -> 26
    /// AA -> 27
    /// AB -> 28
    
    /// 解题思路:从后向前意思遍历字符串.根据对应关系转化进制
    ///
    /// - Parameter s: 给定字符串
    /// - Returns: 结果数字
    
    static func titleToNumber(_ s: String) -> Int {
        var result = 0;
        let newS = String(s.characters.reversed());
        let hash : [Character : Int] = ["A":1,"B":2,"C":3,"D":4,"E":5,"F":6,"G":7,"H":8,"I":9,"J":10,"K":11,"L":12,"M":13,"N":14,"O":15,"P":16,"Q":17,"R":18,"S":19,"T":20,"U":21,"V":22,"W":23,"X":24,"Y":25,"Z":26];
        var j : Int = 0
        for char in newS.characters {
            var i = 0
            var multiplier = 1
            while i < j {
                i += 1
                multiplier *= 26
            }
            result += hash[char]! * multiplier
            j += 1
        }
        return result
    }
}
