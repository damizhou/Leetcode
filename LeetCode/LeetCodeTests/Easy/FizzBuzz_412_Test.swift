//
//  FizzBuzz_412_Test.swift
//  LeetCode
//
//  Created by 潘传洲 on 2017/4/25.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

class FizzBuzz_412_Test: XCTestCase {
    
    private static let ProblemName: String = "FizzBuzz_412_Test"
    
    func test_TwoSum_1_001() {
        let input0: Int = 15
        let expected: [String] =  ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"];
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_002() {
        let input0: Int = 3
        let expected: [String] = ["1","2","Fizz"]
        asyncHelper(input0: input0, expected: expected)
    }
    
    func test_TwoSum_1_003() {
        let input0: Int = 5
        let expected: [String] = ["1","2","Fizz","4","Buzz"]
        asyncHelper(input0: input0, expected: expected)
    }
    
    private func asyncHelper(input0: Int, expected: [String]) {
        let expectation = self.expectation(description: Timeout_Suffix)
        
        DispatchQueue.global().async {
            let result: [String] = FizzBuzz_412.fizzBuzz(input0)
            assertHelper(expected == result, problemName: FizzBuzz_412_Test.ProblemName, input: input0, resultValue: result, expectedValue: expected)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: Timeout_Value) { (error: Error?) in
            if error != nil {
                print(error!)
                assertHelper(false, problemName: FizzBuzz_412_Test.ProblemName, input: input0, resultValue: Timeout_Suffix, expectedValue: expected)
            }
        }
    }
    
}
