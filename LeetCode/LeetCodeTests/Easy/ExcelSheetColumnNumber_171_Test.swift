//
//  ExcelSheetColumnNumber_171_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/17.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class ExcelSheetColumnNumber_171_Test: XCTestCase {
    
    func test_ExcelSheetColumnNumber_171_001() {
        let input0: String = "A"
        let expected: Int =  1
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ExcelSheetColumnNumber_171_002() {
        let input0: String = "AA"
        let expected: Int =  27
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ExcelSheetColumnNumber_171_003() {
        let input0: String = "Z"
        let expected: Int =  26
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: String, expected: Int) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: Int = ExcelSheetColumnNumber_171.titleToNumber(input0)
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
