//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day20_AssignCookies_455 : NSObject {
    /// Assume you are an awesome parent and want to give your children some cookies. But, you should give each child at most one cookie. Each child i has a greed factor gi, which is the minimum size of a cookie that the child will be content with; and each cookie j has a size sj. If sj >= gi, we can assign the cookie j to the child i, and the child i will be content. Your goal is to maximize the number of your content children and output the maximum number.
    /// 题目叫“分配饼干”，给定两个数组，分别表示每个小孩期望的饼干尺寸，和每个饼干实际的尺寸。将饼干分配给这些小孩，但分配的饼干尺寸必须不小于小孩期望的饼干尺寸。求出这些饼干最多可以满足几个小孩。
    
    /// Note:注意
    /// You may assume the greed factor is always positive. 贪心是被允许的
    /// You cannot assign more than one cookie to one child. 一块饼干最多分给一个孩子
    
    /// Example 1: 例1
    
    /// Input: [1,2,3], [1,1]
    
    /// Output: 1
    
    /// Explanation: You have 3 children and 2 cookies. The greed factors of 3 children are 1, 2, 3.你有3个孩子和2块饼干.3个孩子的需求的饼干大小分别是1,2,3.
    /// And even though you have 2 cookies, since their size is both 1, you could only make the child whose greed factor is 1 content.同时,你有两块大小都为1的饼干,因此你只可以满足对于饼干需求为1的那个孩子.
    /// You need to output 1.
    
    
    /// Example 2: 例2
    
    /// Input: [1,2], [1,2,3]
    
    /// Output: 2
    
    /// Explanation: You have 2 children and 3 cookies. The greed factors of 2 children are 1, 2.你有2个孩子和3块饼干.3个孩子的需求的饼干大小分别是1,2.
    /// You have 3 cookies and their sizes are big enough to gratify all of the children,你有3个饼干,而且饼干的大小足够满足所有的孩子.
    /// You need to output 2.
    
    /// 解题思路: 将孩子和饼干数组升序排序,遍历饼干数组.如果当前的饼干符合当前需求最低的孩子,孩子数组的下标+1.只到遍历完孩子数组或者饼干数组.孩子数组的下标即为结果.

    /// - Parameter nums: 给定整数数组
    /// - Returns: 是否存在相同元素
    
    private class func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let newg = g.sorted()
        let newS = s.sorted()
        var i = 0
        var j = 0
        
        
        while i < g.count && j < s.count {
            if newg[i] <= newS[j] {
                i += 1
            }
            j += 1
        }
        return i
    }

    
    class func solution() {
        let g = [1,2,3];
        let s : [Int] = [];
        let result = self.findContentChildren(g,s)
        print("\(self .className())`s result is \(result)")
    }
}
