//
//  AddDigits_258.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/28.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class AddDigits_258_Test: XCTestCase {
    
    func test_NimGame_292_001() {
        let input0: Int = 15
        let expected: Int = 6
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_NimGame_292_002() {
        let input0: Int = 499
        let expected: Int = 4
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_NimGame_292_003() {
        let input0: Int = 1000
        let expected: Int = 1
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: Int, expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = AddDigits_258.addDigits(input0)
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
