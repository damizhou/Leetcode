//
//  Day2_Counting_Bits_338.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/18.
//  Copyright © 2016年 pcz. All rights reserved.
//

import UIKit

class Day2_Counting_Bits_338: NSObject {
    private class func countBits(_ num: Int) -> [Int] {
        var result : [Int] = [Int](repeating:0, count: num + 1)
        for i in 1...num {
            result[i] = result[i / 2] + i & 1;
        }
        return result;
    }
    
    class func solution() {
        
        let a = 32
        let c = self.countBits(a);
        print(c)
    }
}
