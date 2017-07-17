//
//  RansomNote_383_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/17.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class RansomNote_383_Test: XCTestCase {
    
    func test_RansomNote_383_001() {
        let input0: String = "a"
        let input1: String = "b"
        let expected: Bool =  false
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_RansomNote_383_002() {
        let input0: String = "aa"
        let input1: String = "ab"
        let expected: Bool =  false
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_RansomNote_383_003() {
        let input0: String = "aa"
        let input1: String = "aab"
        let expected: Bool =  true
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    private func asyncHelper(input0: String, input1: String, expected: Bool) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Bool = RansomNote_383.canConstruct(ransomNote: input0, magazine: input1)
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
