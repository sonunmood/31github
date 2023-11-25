//
//  main.swift
//  CodeWars
//
//  Created by Sonun on 22/11/23.
//

import Foundation

func getGrade(_ s1:Int, _ s2:Int, _ s3:Int) -> String {
    
    let avarageScore = (s1 + s2 + s3)/3
    
    switch avarageScore {
    case 0...100: return "A"
    case 80..<90: return "B"
    case 70..<80: return "C"
    case 60..<70: return "D"
    case 0..<60:  return "F"
    default:      return "error"
    }
    
}

var result = getGrade(80, 90, 30)
print(result)


func repeatStr(_ n: Int, _ string: String) -> String {
  
    return String(String(repeating: string, count: n))
}

print(repeatStr(8, "S"))

func evenOrOdd(_ number: Int) -> String {
    var numberType = ""
    
    if number % 2 == 0 {
       numberType = "Even"
    } else {
        numberType = "Odd"
    }
    
    return numberType
}

print(evenOrOdd(143))

func multiNumber(_ number: Int) -> String {
     
   return " 1 * \(number) = \(number * 1) \n 2 * \(number) = \(number * 2) \n 3 * \(number) = \(number * 3) \n 4 * \(number) = \(number * 4) \n 5 * \(number) = \(number * 5) \n 6 * \(number) = \(number * 6) \n 7 * \(number) = \(number * 7) \n 8 * \(number) = \(number * 8) \n 9 * \(number) = \(number * 9) \n 10 * \(number) = \(number * 10)"
}

print(multiNumber(5))

