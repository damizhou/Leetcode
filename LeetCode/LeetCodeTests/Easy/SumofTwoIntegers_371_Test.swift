//
//  SumofTwoIntegers_371_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/28.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class SumofTwoIntegers_371_Test: XCTestCase {
    
    
    func test_SumofTwoIntegers_371_001() {
        let input0: Int = 5
        let input1: Int = 1
        let expected: Int = 6
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_SumofTwoIntegers_371_002() {
        let input0: Int = 4
        let input1: Int = 9
        let expected: Int = 13
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_SumofTwoIntegers_371_003() {
        let input0: Int = 3
        let input1: Int = 9
        let expected: Int = 12
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    private func asyncHelper(input0: Int, input1: Int, expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = SumofTwoIntegers_371.getSum(input0, input1)
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
