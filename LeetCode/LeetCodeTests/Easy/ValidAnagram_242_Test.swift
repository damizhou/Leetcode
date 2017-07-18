//
//  ValidAnagram_242_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/18.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class ValidAnagram_242_Test: XCTestCase {
    func test_ValidAnagram_242_001() {
        let input0: String = "qwerw"
        let input1: String = "rweq"
        let expected: Bool =  false
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_ValidAnagram_242_002() {
        let input0: String = "qertyu"
        let input1: String = "qwertyu"
        let expected: Bool =  false
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    func test_ValidAnagram_242_003() {
        let input0: String = "aba"
        let input1: String = "aab"
        let expected: Bool =  true
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    
    private func asyncHelper(input0: String, input1: String, expected: Bool) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Bool = ValidAnagram_242.isAnagram(input0, input1)
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
