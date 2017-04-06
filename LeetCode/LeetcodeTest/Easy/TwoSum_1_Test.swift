//
//  TwoSum_1_Test.swift
//  Leetcode
//
//  Created by 潘传洲 on 2017/4/6.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import Leetcode
class TwoSum_1_Test: XCTestCase {
    
    private static let ProblemName: String = "TwoSum_1"
    private static let TimeOutName = ProblemName + Default_Timeout_Suffix
    private static let TimeOut = Default_Timeout_Value
    
    func test_001() {
        let input0: [Int] = [2, 7, 11, 15]
        let input1: Int = 9
        let expected: [Int] = [1, 2]
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    func test_002() {
        let input0: [Int] = [5, 5]
        let input1: Int = 10
        let expected: [Int] = [1, 2]
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }
    func test_003() {
        let input0: [Int] = [5, 7, 5, 2, 11, 15]
        let input1: Int = 9
        let expected: [Int] = [2, 4]
        asyncHelper(input0: input0, input1: input1, expected: expected)
    }

    private func asyncHelper(input0: [Int], input1: Int, expected: [Int]) {
        
        weak var expectation: XCTestExpectation? = self.expectation(description: TwoSum_1_Test.TimeOutName)
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async(execute: { () -> Void in
            let result: [Int] = TwoSum_1.twoSum(input0, input1)
            assertHelper(expected == result, problemName: TwoSum_1_Test.ProblemName, input: input0, resultValue: result, expectedValue: expected)
        })
        
        if let unwrapped = expectation {
            unwrapped.fulfill()
        }
        
        waitForExpectations(timeout: TwoSum_1_Test.TimeOut) { (error: Error?) -> Void in
            if error != nil {
                assertHelper(false, problemName: TwoSum_1_Test.ProblemName, input: input0, resultValue: TwoSum_1_Test.TimeOutName, expectedValue: expected)
            }
        }
    }
}
