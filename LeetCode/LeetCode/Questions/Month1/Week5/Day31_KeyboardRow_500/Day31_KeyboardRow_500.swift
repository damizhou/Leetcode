//
//  Day9_MoveZeroes_283.swift
//  LeetCode
//
//  Created by 潘传洲 on 16/11/3.
//  Copyright © 2016年 pcz. All rights reserved.
//

import Foundation

class Day31_KeyboardRow_500 : NSObject {
    /// Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
    /// 给定一组单词，返回可以用美式键盘中的某一行字母键入的所有单词。
    
    /// Note:
    /// You may use one character in the keyboard more than once.键盘中的字符可以使用多次
    /// You may assume the input string will only contain letters of alphabet.可以假设输入只包含小写或者大写字母

    /// Example 1:
    /// Input: ["Hello", "Alaska", "Dad", "Peace"]
    /// Output: ["Alaska", "Dad"]
    
    private class func findWords(_ words: [String]) -> [String] {
        let firstRow : Set = ["q","w","e","r","t","y","u","i","o","p","Q","W","E","R","T","Y","U","I","O","P"]
        let secondRow : Set = ["a","s","d","f","g","h","j","k","l","A","S","D","F","G","H","J","K","L"]
        let thirdRow : Set = ["z","x","c","v","b","n","m","Z","X","C","V","B","N","M"]
        var result : [String] = []
        for word in words {
            var row : Set<String>? = nil
            var isTrue = true
            for char in word.characters{
                if row == nil {
                    if firstRow.contains(String(char)) {
                        row = firstRow
                    }
                    if secondRow.contains(String(char)) {
                        row = secondRow
                    }
                    if thirdRow.contains(String(char)) {
                        row = thirdRow
                    }
                }else{
                    if !row!.contains(String(char)){
                        isTrue = false
                    }
                }
                
            }
            if isTrue {
                result.append(word)
            }
        }
        return result
    }
    
    class func solution() {
        let words = ["Hello", "Alaska", "Dad", "Peace"]
        let result = self.findWords(words)
        print("\(self .className())`s result is \(result)")
    }
}
