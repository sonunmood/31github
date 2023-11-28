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

func booleanToString(_ b: Bool) -> String {
 
    switch b {
    case true: return "true"
    case false: return "false"
    }
}

print(booleanToString(false))

//Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

func gigitToString (_ digit: String) -> String {
    var number = Int(digit)
    
    return digit
}

func createBox(_ m:Int, _ n:Int) -> [[Int]] {
   
    
  return [[]]
}

func square(_ num: Int) -> Int {
  
  return num * num
}

print(square(8))

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    var newArray: [String] = []

    for i in arr {
        if i.contains(str) {
            newArray.append(i)
        }
    }
    
    return newArray
}

print((wordSearch("ko", ["koko", "iki", "ice", "juice", "plan"])))

func digitize(_ num:Int) -> [Int] {
    
    var digitArray = String(num).compactMap { $0.wholeNumberValue}
    
    return digitArray
}
print(digitize(3456789))

func summ(_ arr: [Any]) -> Int {
    
    return arr.reduce(0) { sum, element in
        if let number = element as? Int {
            return  sum + number
        } else if let string = element as? String, let number = Int(string) {
            return sum + number
        } else {
            return sum
        }
    }
}

print(summ([1,1,"2", 2, "5"]))

func getSum(_ arr: [Any]) -> Int {
    return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}

print(getSum([7,1,"8"]))
