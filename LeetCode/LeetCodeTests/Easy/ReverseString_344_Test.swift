//
//  ReverseString_344_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/10.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class ReverseString_344_Test: XCTestCase {
        
    private static let ProblemName: String = "ReverseString_344_Test"
    
    func test_TwoSum_1_001() {
        let input0: String = "hello"
        let expected: String = "olleh"
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_002() {
        let input0: String = "a"
        let expected: String = "a"
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_003() {
        let input0: String = "12345asd"
        let expected: String = "dsa54321"
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: String, expected: String) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: String = ReverseString_344.reverseString(s: input0)
            assertHelper(expected == result, problemName: ReverseString_344_Test.ProblemName, input: input0, resultValue: result, expectedValue: expected)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: Timeout_Value) { (error: Error?) in
            if error != nil {
                print(error!)
                assertHelper(false, problemName: ReverseString_344_Test.ProblemName, input: input0, resultValue: Timeout_Suffix, expectedValue: expected)
            }
        }
    }
    
}
