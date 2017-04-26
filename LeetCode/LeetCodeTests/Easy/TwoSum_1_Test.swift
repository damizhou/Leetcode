//
//  TwoSum_1_Test.swift
//  Leetcode
//
//  Created by 潘传洲 on 2017/4/6.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode
class TwoSum_1_Test: XCTestCase {
    
    func test_TwoSum_1_001() {
        let input0: [Int] = [5, 5]
        let input1: Int = 10
        let expected: [Int] = [0, 1]
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_TwoSum_1_002() {
        let input0: [Int] = [2, 7, 11, 15]
        let input1: Int = 9
        let expected: [Int] = [0, 1]
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_TwoSum_1_003() {
        let input0: [Int] = [5, 7, 5, 2, 11, 15]
        let input1: Int = 9
        let expected: [Int] = [1, 3]
        print("test_TwoSum_1_003`s self = \(self)")
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }

    private func asyncHelper(input0: [Int], input1: Int, expected: [Int]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: [Int] = TwoSum_1.twoSum(input0, input1)
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
