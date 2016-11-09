//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day12_ExcelSheetColumnNumber_171: NSObject {
    /// Related to question Excel Sheet Column Title
    
    /// Given a column title as appear in an Excel sheet, return its corresponding column number.
    
    /// For example:
    
    /// A -> 1
    /// B -> 2
    /// C -> 3
    /// ...
    /// Z -> 26
    /// AA -> 27
    /// AB -> 28
    
    /// <#Description#>
    ///
    /// - Parameter s: <#s description#>
    /// - Returns: <#return value description#>
    private class func titleToNumber(_ s: String) -> Int {
        return 10
    }

    
    
    class func solution() {
        let s = "a"
        let result = self.titleToNumber(s)
        print(result)
    }
}
