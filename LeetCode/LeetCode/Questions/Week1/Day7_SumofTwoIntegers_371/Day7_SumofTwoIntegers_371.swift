//
//  Day7_SumofTwoIntegers_371.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/31.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day7_SumofTwoIntegers_371: NSObject {
    
    /// 题目和解题思路见371.SumofTwoIntegers.md
    class private func getSum(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        var cin : Int = 0
        var sum : Int = 0
        sum = a ^ b;
        cin = (a & b) << 1
        
        return getSum(sum, cin);
    }
    
    class func solution() {
        
        let a = 3
        let b = 4
        let c = self.getSum(a,b);
        print(c)
    }
}
