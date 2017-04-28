

//
//  MoveZeroes_283_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/28.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class MoveZeroes_283_Test: XCTestCase {
    
    func test_SingleNumber_136_001() {
        let input0: [Int] = [0, 1, 2, 4, 5, 0, 6]
        let expected: [Int] = [1, 2, 4, 5, 6, 0, 0]
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_SingleNumber_136_002() {
        let input0: [Int] = [1, 1, 2, 0, 5, 2, 0, 3, 3, 4, 4]
        let expected: [Int] = [1, 1, 2, 5, 2, 3, 3, 4, 4, 0, 0]
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_SingleNumber_136_003() {
        let input0: [Int] = [1]
        let expected: [Int] = [1]
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: [Int], expected: [Int]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        var input0 = input0
        DispatchQueue.global().async {
            MoveZeroes_283.moveZeroes(&input0)
            assertHelper(expected == input0, problemName: self.name!, input: input0, resultValue: input0, expectedValue: expected)
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
