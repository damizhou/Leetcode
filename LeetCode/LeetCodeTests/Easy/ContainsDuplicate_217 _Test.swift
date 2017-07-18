//
//  ContainsDuplicate_217 _Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/18.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class ContainsDuplicate_217_Test: XCTestCase {
    
    func test_ContainsDuplicate_217_001() {
    let input0: [Int] = [1, 2, 3, 4, 5, 6]
    let expected: Bool = false
    asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ContainsDuplicate_217_002() {
        let input0: [Int] = [1, 2, 3, 4, 5, 6, 1]
        let expected: Bool = true
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ContainsDuplicate_217_003() {
        let input0: [Int] = [1, 2, 3, 4, 5, 6, 3, 2]
        let expected: Bool = true
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: [Int], expected: Bool) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Bool = ContainsDuplicate_217.containsDuplicate(input0)
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
