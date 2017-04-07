//
//  LeetCodeTests.swift
//  LeetCodeTests
//
//  Created by 潘传洲 on 2017/4/7.
//  Copyright © 2017年 pcz. All rights reserved.
//

import XCTest
@testable import LeetCode

let Timeout_Value = 0.01
let Timeout_Suffix: String = " Time Out"

func assertHelper(_ expression: @autoclosure () -> Bool, problemName: String , input: Any, resultValue: Any, expectedValue: Any) {
    XCTAssert(expression(), "\n====================================\nProblem: \(problemName)\n====================================\nInput: \"\(input)\"\n====================================\nExpected: \"\(expectedValue)\"\n====================================\nResult: \"\(resultValue)\"\n====================================\n")
}

func compareTwoDimensionIntArray(arr0: [[Int]], arr1: [[Int]]) -> Bool {
    guard arr0.count == arr1.count else {
        return false
    }
    var count = 0
    for subArr0 in arr0 {
        let subArr1 = arr1[count]
        guard subArr0 == subArr1 else {
            return false
        }
        count += 1
    }
    return true
}

func convertIntArrayToNumberArr(intArr: [Int]) -> [NSNumber] {
    var tmpNumberArr = [NSNumber]()
    for i in intArr {
        tmpNumberArr.append(NSNumber(integerLiteral: i))
    }
    return tmpNumberArr
}
