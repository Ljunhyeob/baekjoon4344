//
//  main.swift
//  baekjoon4344
//
//  Created by 이준협 on 2023/01/06.
//

import Foundation


var num = Int(readLine()!)! //반 갯수
var avgPresent:[Double] = [] // 평균 저장

for i in 0..<num{
    let line = readLine()!
    let lineArr = line.components(separatedBy: " ")
    let a = Int(lineArr[0])! // 몇 명인지.
    var sum = 0
    for j in 1..<lineArr.count{
        sum = sum + Int(lineArr[j])!
    }
    var avg = Double(sum) / Double(lineArr.count - 1) //평균
    var avgNum = 0
    for k in 1..<lineArr.count{
        if avg < Double(lineArr[k])!{
            avgNum = avgNum + 1
        }
    }
    avgPresent.append(Double(avgNum)/Double(lineArr.count - 1))
}
for i in 0..<avgPresent.count{
    var value = avgPresent[i] * 100
    let str = String(format: "%.3f", value)
    print("\(str)%")
}

