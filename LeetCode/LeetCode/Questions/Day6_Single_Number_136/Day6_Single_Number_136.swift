//
//  Day6_Single_Number_136.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/28.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day6_Single_Number_136: NSObject {

    /// 题目和解题思路见292. NimGame.md
    class private func singleNumber(_ nums: [Int]) -> Int {
        var result : Int = 0
        for i in nums {
            result ^= i
        }
        return result
    }
    
    class func solution() {
        
        let a = [1,1,2,2,3,4,4,5,5]
        let c = self.singleNumber(a);
        print(c)
    }
}
