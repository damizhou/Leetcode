//
//  ExcelSheeyColumnTitle_168_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/7/17.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest

@testable import LeetCode

class ExcelSheeyColumnTitle_168_Test: XCTestCase {
    
    func test_ExcelSheeyColumnTitle_168_001() {
        let input0: Int = 702
        let expected: String = "ZZ"
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ExcelSheeyColumnTitle_168_002() {
        let input0: Int = 52
        let expected: String = "AZ"
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_ExcelSheeyColumnTitle_168_003() {
        let input0: Int = 703
        let expected: String = "AAA"
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: Int, expected: String) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: String = ExcelSheetColumnTitle_168.convertToTitle(input0)
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
