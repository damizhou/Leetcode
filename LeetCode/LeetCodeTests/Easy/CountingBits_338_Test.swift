//
//  CountingBits_338_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/10.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class CountingBits_338_Test: XCTestCase {
        
    private static let ProblemName: String = "CountingBits_338"
    
    func test_TwoSum_1_001() {
        let input0: Int = 0
        let expected: [Int] = [0]
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_002() {
        let input0: Int = 1
        let expected: [Int] = [0,1]
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_003() {
        let input0: Int = 5
        let expected: [Int] = [0, 1, 1, 2, 1, 2]
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: Int, expected: [Int]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        DispatchQueue.global().async {
            let result: [Int] = CountingBits_338.countBits(input0)
            assertHelper(expected == result, problemName: CountingBits_338_Test.ProblemName, input: input0, resultValue: result, expectedValue: expected)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: Timeout_Value) { (error: Error?) in
            if error != nil {
                print(error!)
                assertHelper(false, problemName: CountingBits_338_Test.ProblemName, input: input0, resultValue: Timeout_Suffix, expectedValue: expected)
            }
        }
    }
    
}
