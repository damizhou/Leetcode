//
//  IntersectionofTwoArrays_349_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/17.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class IntersectionofTwoArrays_349_Test: XCTestCase {
    
    func test_IntersectionofTwoArrays_349_001() {
        let input0: [Int] = [2, 2, 2, 2, 2, 5, 6, 7, 8]
        let input1: [Int] = [2, 2, 2, 2, 2]
        let expected: [Int] = [2]
        asyncHelper1(input0: input0, input1: input1, expected: expected)
        asyncHelper2(input0: input0, input1: input1, expected: expected)
    }
    
    func test_IntersectionofTwoArrays_349_002() {
        let input0: [Int] = [1, 2, 2, 1]
        let input1: [Int] = [2, 2]
        let expected: [Int] = [2]
        asyncHelper1(input0: input0, input1: input1, expected: expected)
        asyncHelper2(input0: input0, input1: input1, expected: expected)
    }
    
    func test_IntersectionofTwoArrays_349_003() {
        let input0: [Int] = [1, 2, 3, 4, 5]
        let input1: [Int] = [1, 2, 3, 4, 5]
        let expected: [Int] = [1, 2, 3, 4, 5]
        asyncHelper1(input0: input0, input1: input1, expected: expected)
        asyncHelper2(input0: input0, input1: input1, expected: expected)
    }
    
    private func asyncHelper1(input0: [Int], input1: [Int], expected: [Int]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: [Int] = IntersectionofTwoArrays_349.intersection(input0, input1)
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
    
    private func asyncHelper2(input0: [Int], input1: [Int], expected: [Int]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: [Int] = IntersectionofTwoArrays_349.intersection2(input0, input1)
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
