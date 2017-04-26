//
//  Day5_NimGame_292.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/10/25.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class NimGame_292: NSObject {
    /*
     ##题目描述：
     
     - You are playing the following Nim Game with your friend: There is a heap of stones on the table, each time one of you take turns to remove 1 to 3 stones. The one who removes the last stone will be the winner. You will take the first turn to remove the stones.
     
     - Both of you are very clever and have optimal strategies for the game. Write a function to determine whether you can win the game given the number of stones in the heap.
     
     - For example, if there are 4 stones in the heap, then you will never win the game: no matter 1, 2, or 3 stones you remove, the last stone will always be removed by your friend.
     
     - Hint:
     
     - If there are 5 stones in the heap, could you figure out a way to remove the stones such that you will always be the winner?
     
     ##题目大意：
     
     - 你正在和朋友玩下面的Nim游戏：桌子上有一堆石头，每一次你们轮流取1至3颗石头。最后一个取走石头的人就是赢家。第一轮由你先取。
     
     - 你们俩都很聪明并且掌握玩游戏的最佳策略。编写函数，给定石头的个数，判断你是否可以赢得游戏。
     
     - 例如，如果堆中有4颗石头，那么你一定不会赢得游戏：无论你第一轮取走1，2，还是3颗石头，下一轮你的朋友都可以取走余下的所有石头。
     
     - 提示：
     
     - 如果堆中有5颗石头，你可以找出确保自己能赢的取石子策略吗？
     
     ##解题思路：
     
     - Nim游戏的解题关键是寻找“必胜态”。
     
     - 根据题设条件：
     
     ````
     
     当n∈[1,3]时，先手必胜。
     
     当n == 4时，无论先手第一轮如何选取，下一轮都会转化为n∈[1,3]的情形，此时先手必负。
     
     当n∈[5,7]时，先手必胜，先手分别通过取走[1,3]颗石头，可将状态转化为n == 4时的情形，此时后手必负。
     
     当n == 8时，无论先手第一轮如何选取，下一轮都会转化为n∈[5,7]的情形，此时先手必负。
     
     ......
     ````
     
     - 以此类推，可以得出结论：
     
     - 当n % 4 != 0时，先手必胜；否则先手必负。
     */
    
    /// 题目和解题思路见292. NimGame.md
    static func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}
