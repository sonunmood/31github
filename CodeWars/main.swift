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


//Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

func summOfInt(_ string: String) -> Int {
    var array: [Character] = []

    for i in string {
        if i.isNumber {
            array.append(i)
        }
    }
    
    return array.compactMap{ Int(String($0)) }.reduce(0, +)
}

print(summOfInt("hglhi1212"))


func sumOfIntefers(_ srt: String) -> Int {
    
    let string = srt.components(separatedBy: CharacterSet.decimalDigits.inverted)
    
    return string.compactMap { Int($0)}.reduce(0, +)
}

print(sumOfIntefers("itguiwruj55dcef9fvrf16"))


func sumOfInt2(_ string: String) -> Int {
    let koko = string.split {!$0.isNumber}
    print (koko)
    return string.split {!$0.isNumber}.compactMap { Int($0) }.reduce(0, +)
}

print(sumOfInt2("nrn88wjnj12kefnv1"))

func boolToWord(_ bool: Bool) -> String {
    return bool ? "Yes" : "No"
}

print(boolToWord(false))

//A number is non consecutive if it is not exactly one larger than the previous element in the array. The first element gets a pass and is never considered non consecutive.
//Create a function named allNonConsecutive
//E.g., if we have an array [1,2,3,4,6,7,8,15,16] then 6 and 15 are non-consecutive.

func nonConsecutive(_ arr: [Int]) -> [(Int,Int)] {
    var tuple:[(Int,Int)] = []
   
    for index in 1..<arr.count {
        if arr[index] - arr[index - 1] != 1 {
            print(index)
            tuple.append((index,arr[index]))
        }
    }
        return tuple
}

print(nonConsecutive([1,2,3,5,6,7,10,11,12,55,56]))

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
}

// MARK: 10/31
func getSumOfStrings(_ a: String, _ b: String) -> String {
    var result = 0

    result = (Int(a) ?? 0) + (Int(b) ?? 0)
    
    return String(result)
    
}

print(getSumOfStrings("3","3"))


func sum_str(_ a: String, _ b: String) -> String {
  String((Int(a) ?? 0) + (Int(b) ?? 0))
}

print(sum_str("10","3"))


// MARK: 11/31

func oddOne(_ arr: [Int]) -> Int? {
    
   
    var index: Int?
    
    var ind = index

    for i in 1..<arr.count {
        if arr[i] % 2 == 1 {
          ind = i
        }
    }
    
    return ind
}

print(oddOne([2,4,6,8,10,33])!)

//You Can't Code Under Pressure #1
func doubleInteger(_ num: Int) -> Int {

  return num * 2
}

print(doubleInteger(4))

//Quarter of the year 12/31

func quarter(of month: Int) -> Int {
    
    switch month {
    case 1...3: return 1
    case 4...6: return 2
    case 7...9: return 3
    case 10...12: return 4
    default: return 0
    }
}

print(quarter(of: 8))

var laLigaGoals = 43
var championLeagueGoals = 10
var copaDelReyGoals = 3

var totalGoals = laLigaGoals + championLeagueGoals + copaDelReyGoals

print(totalGoals)

//Grasshopper - Personalized Message
func great(_ name: String, _ owner: String) -> String {
    if name == owner {
        return "Hello Boss"
    } else {
        return "Hello guest"
    }
}

print(great("Sonun","Talgar"))

//Disemvowel Trolls 14/31
func disemvowel(_ s: String) -> String {
    let vowels: [Character] = ["A", "O", "I", "E", "U", "a", "o", "i", "e", "u"]
    return s.filter {!vowels.contains($0)}
    
}
print(disemvowel("I am grateful for everything"))


func shortName(_ names: [String]) -> [String] {
    return names.filter {$0.count < 8}
}

print(shortName(["Sonun","Talgar","Rayana","Erkaiym", "Ermek"]))


//Is he gonna survive?
func hero(bullets: Int, dragons: Int) -> Bool {
    
    if bullets == dragons * 2 || bullets > (dragons * 2) {
        return true
    } else {
        return false
    }
}

print(hero(bullets: 20, dragons: 10))

//Difference of Volumes of Cuboids
func findDifference(_ a:[Int], _ b:[Int]) -> Int {
    let aresult = a[0] * a[1] * a[2]
    let bresult = b[0] * b[1] * b[2]
    
    if aresult > bresult {
        return aresult - bresult
    } else {
        return bresult - aresult
    }
}

print(findDifference([2,2,3], [1,1,1]))


//Third Angle of a Triangle
func otherAngle(a: Int, b: Int) -> Int {
 return 180 - (a + b)
}


func factorial(_ n: Int) -> Int {
 if n == 0 { return 1 }
 else { return n * factorial(n - 1)}
}

print(factorial(5))


//func strongNumber(_ number: Int) -> Int {
//    var digitArray: [Int] = String(number).compactMap { $0.wholeNumberValue}
//    var number = 0
//    print(number)
//    var factorials: [Int] = []
//    print(factorials)
//    for i in 1..<digitArray.count {
//        number = digitArray[i]
//        if number == 0 {number = 0}
//        else { number =  factorial(number - 1)}
//        factorials.append(number)
//    }
//
//    return 0
//}
//
//print(strongNumber(123))

//Leap Years
func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 && year % 400 == 0 {
        return true
    } else if year % 4 == 0 && year % 100 != 0 {
        return true
    } else if year % 4 == 0 && year < 400  {
        return true
    } else if year % 100 == 0 && year % 400 != 0{
        return false
    } else  {
        return false
    }
}

print(isLeapYear(2100))

//Find uniqe
func findUniq(_ arr: [Int]) -> Int {
    var uniqe = 0
    var dict: [Int: Int] = [:]
    for i in arr {
        dict[i,default: 0] += 1
    }
    
    

    
    
    print(dict)
    return 0
}
print("Find uniqe")
print(findUniq([1,1,1,8,1]))

var websites: [String] = Array(repeating: "codewars", count: 1000)

//Transportation on vacation
func rentalCarCost(_ days: Int) -> Int {
    var rent = 40
    if days < 3 {
        rent = 40 * days
    } else if days < 7   {
        rent = (days * rent) - 20
    } else if days >= 7 {
        rent = (days * rent) - 50
    }
    return rent
}

print(rentalCarCost(7))

//Write function bmi that calculates body mass index (bmi = weight / height2).
//if bmi <= 18.5 return "Underweight"
//if bmi <= 25.0 return "Normal"
//if bmi <= 30.0 return "Overweight"
//if bmi > 30 return "Obese"

func bmi(_ weight: Int, _ height: Double) -> String {
    var bmi: Double = Double(weight) / (height * height)
    
    switch bmi {
    case 0...18.5: return "Underweight"
    case 18.6...25.0: return "Normal"
    case 25.1...30.0: return "Overweight"
    default: return "Obese"
    }
}

print(bmi(57, 160.0))


//Enumerable Magic #25 - Take the First N Elements
func take(_ arr: [Int], _ n: Int) -> [Int] {
    var result: [Int] = []
    for i in arr {
        if i != n {
            result.append(i)
        } else {
            result.append(i)
           
        }
    }
    return result
}

print(take([3,4,5,6,7], 5))


//Get planet name
func getPlanetName(_ id: Int) -> String {
    switch id {
    case 1: return "Mercuri"
    case 2: return "Saturn"
    case 3: return "Upiter"
    default: return ""
    }
}

//Reversed Strings
func reverse(_ str: String) -> String {
    let reversedString = str.reversed()
    return String(reversedString)
}

print(reverse("Sonun"))



func sixToast(_ num: Int) -> Int {
    var toastCount = 6
    
    if num > toastCount {
        return num - toastCount
    } else {
        return toastCount - num
    }
}

print(sixToast(2))


func balancedNumber(_ number: Int) -> String {
    let numberString = String(number)
    let middleNumber = numberString.index(numberString.startIndex, offsetBy: numberString.count / 2)
    print(middleNumber)
    if numberString.count % 2 == 0 {
        numberString.index(before: middleNumber)
    }



    return ""
}
print(balancedNumber(12345))

//Gravity Flip
func flip(_ direction: String, _ a: [Int]) -> [Int] {
    if direction == "R" {
        return a.sorted { $0 < $1}
    } else if direction == "L" {
        return a.sorted {$0 > $1}
    } else {
        return []
    }
}

print(flip("R", [3,4,5,6,8,9,1]))


func uniqeDigits(_ arr: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    print(dict)
    for i in arr {
        dict[i, default: 0] += 1
    }
    
    
    
    return 0
}

print(uniqeDigits([1,1,1,4,5,5,7,8,8]))


func findZodiac(day: Int, month: Int) -> String {
    switch (day, month) {
    case (21...31,3), (1...29, 4):
        return "Овен"
    case (20...31,4), (1...20, 5):
        return "Телец"
    case (21...31,5), (1...20, 6):
        return "Близнецы"
    case (21...31,6), (1...22, 7):
        return "Рак"
    case (23...31,7), (1...22, 8):
        return "Лев"
    case (22...31,8), (1...22, 9):
        return "Дева"
    case (23...31,9), (1...22, 10):
        return "Стрелец"
    case (23...31,10), (1...23, 11):
        return "Скорпион"
    case (23...31,10), (1...23, 11):
        return "Козерог"
    case (22...31,11), (1...23, 12):
        return "Водолей"
    default: return ""
    }
}

print(findZodiac(day: 16, month: 9))

//Составить программу одобрения выдачи кредита. Пользователь должен вводить свою зарплату, cумму кредита, кол-во лет от 1 до 3. За 1 год начисляется 30% к сумме кредита, 2 - 15%, 3 - 10%. Распределить фиксированную ежемесячную оплату и проверить является ли ежемесячная оплата больше 50% зарплаты. Если больше, одобряется кредит, если нет, то отклоняется. Использовать в задаче оба условных

func aproveOrNot(salary: Int, creditAmount: Int, year: Int) -> String {
    var percentAmount = 0
    let one = Int(0.3)
    let two = Int(0.15)
    let three = Int(0.1)
    
    if year == 1 {
        percentAmount = (creditAmount + (creditAmount * one) / 12)
    } else if year == 2 {
        percentAmount = (creditAmount + (creditAmount * two) / 24)
    } else if year == 3 {
        percentAmount = (creditAmount + (creditAmount * three) / 36)
    } else {
        percentAmount = 0
    }
    
    if percentAmount > (salary / 2) {
        return "Одобрено"
    } else {
        return "Не одобрено"
    }
}

print(aproveOrNot(salary: 47000, creditAmount: 100000, year: 2))


func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    if n % x == 0 && n % y == 0 {
        return true
    } else {
        return false
    }
}

print(isDivisible(45, 5, 4))

func isDivisible2(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}

func getReversedString(_ str: String) -> String {
    let word = str.components(separatedBy: " ")
    print (word)
    let reversedWord = word.map {String($0.reversed())}
    let result = reversedWord.joined(separator: " ")
    return result
}


print(getReversedString("Hello world"))

//Grasshopper - Summation
func summation(_ n: Int) -> Int {
    var result = 0
    var array: [Int] = []
    for i in 1...n {
        array.append(i)
        result = array.reduce(0) {$0 + $1}
    }
    
    return result
}

print(summation(5))


func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    a.contains(x) ? true : false
}

print(check([8,9,5,3,2,0], 8))

func descendingOrder(of number: Int) -> Int {
    return Int(String(String(number).sorted(by: >))) ?? 0
}
print(descendingOrder(of: 76542076))


//Special Number (Special Numbers Series #5)
func specialNumber(_ number: Int) -> String {
    let strNum = String(number)
    let set: Set<Character> = ["0","1","2","3","4","5"]
    var result = ""
    
    for i in strNum {
        
        if  set.contains(i) {
            result =  "Special"
        } else {
            result = "Not Srecial"
            break
        }
    }
    
    return result
}

print(specialNumber(260))
