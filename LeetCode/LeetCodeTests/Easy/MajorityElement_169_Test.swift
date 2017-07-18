//
//  MajorityElement_169_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/18.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class MajorityElement_169_Test: XCTestCase {
    
    func test_MajorityElement_169_001() {
        let input0: [Int] = [1, 2, 3, 3, 4, 3]
        let expected: Int = 3
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_MajorityElement_169_002() {
        let input0: [Int] = [1, 1, 2, 3, 3, 4, 4, 1, 1, 1, 1]
        let expected: Int = 1
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_MajorityElement_169_003() {
        let input0: [Int] = [1]
        let expected: Int = 1
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: [Int], expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = MajorityElement_169.majorityElement(input0)
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
