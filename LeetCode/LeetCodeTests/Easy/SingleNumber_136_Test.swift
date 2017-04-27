//
//  SingleNumber_136.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/27.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class SingleNumber_136_Test: XCTestCase {
    
    func test_SingleNumber_136_001() {
        let input0: [Int] = [1, 1, 2, 2, 3, 3, 4]
        let expected: Int = 4
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_SingleNumber_136_002() {
        let input0: [Int] = [1, 1, 2, 5, 2, 3, 3, 4, 4]
        let expected: Int = 5
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_SingleNumber_136_003() {
        let input0: [Int] = [1]
        let expected: Int = 1
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: [Int], expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = SingleNumber_136.singleNumber(input0)
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
