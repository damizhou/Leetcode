//
//  LongestPalindrome_409_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/17.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class LongestPalindrome_409_Test: XCTestCase {
    
    func test_LongestPalindrome_409_Test_001() {
        let input0: String = "abccccdd"
        let expected: Int =  7
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_LongestPalindrome_409_Test_002() {
        let input0: String = "AAA"
        let expected: Int =  3
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_LongestPalindrome_409_Test_003() {
        let input0: String = "Aaxxcc"
        let expected: Int =  5
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: String, expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = LongestPalindrome_409.longestPalindrome(input0)
            assertHelper(expected == result, problemName: self.name!, input: input0, resultValue: result, expectedValue: expected)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: Timeout_Value) { (error: Error?) in
            if error != nil {
                print(error!)
                assertHelper(false, problemName: self.name!, input: input0, resultValue: Timeout_Suffix, expectedValue: expected)
            }
        }
    }
    
}
