//
//  NimGame_292_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/26.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class NimGame_292_Test: XCTestCase {
    
    func test_NimGame_292_001() {
        let input0: Int = 15
        let expected: Bool = true
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_NimGame_292_002() {
        let input0: Int = 4
        let expected: Bool = false
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_NimGame_292_003() {
        let input0: Int = 1
        let expected: Bool = true
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: Int, expected: Bool) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Bool = NimGame_292.canWinNim(input0)
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
