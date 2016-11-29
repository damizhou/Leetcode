//
//  Day4_FizzBuzz_ 412.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/24.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day4_FizzBuzz_412: NSObject {
    
    /// 编写一个输出数字从1到n的字符串表示形式的程序。但是对于三的倍数，应该输出“Fizz”而不是数字和五个输出“Buzz”的倍数。 对于三个和五个输出“FizzBuzz”的倍数的数字。
    
    /// n = 15,
    /// Return:
    /// [
    /// "1",
    /// "2",
    /// "Fizz",
    /// "4",
    /// "Buzz",
    /// "Fizz",
    /// "7",
    /// "8",
    /// "Fizz",
    /// "Buzz",
    /// "11",
    /// "Fizz",
    /// "13",
    /// "14",
    /// "FizzBuzz"
    /// ]
    /// 解题思路:遍历1到n,先判断是不是3的倍数,是在字符串后拼接Fizz;继续判断是不是5的倍数,是在字符串后拼接Buzz.最后检查字符串是否为空,是则拼接对应的数字
    
    /// - parameter n: 目标数
    ///
    /// - returns: 字符串数组
    private class func fizzBuzz(_ n: Int) -> [String] {
        var stringS : [String] = [String]()
        for i in 1...n {
            var str : String = String()
            if i % 3 == 0 {
                str.append("Fizz")
            }
            if i % 5 == 0{
                str.append("Buzz")
            }
            if str.characters.count == 0{
                str = "\(i)"
            }
            
            stringS.append(str)
        }
        return stringS
    }
    
    class func solution() {
        
        let a = 32
        let result = self.fizzBuzz(a);
        print("\(self .className())`s result is \(result)")
    }
}
