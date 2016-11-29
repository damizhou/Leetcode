//
//  Day5_NimGame_292.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/25.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day5_NimGame_292: NSObject {
    
    /// 题目和解题思路见292. NimGame.md
    private class func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
    
    class func solution() {
        
        let a = 32
        let result = self.canWinNim(a);
        print("\(self .className())`s result is \(result)")
    }
}
