import UIKit
import Foundation
//
//var a = 5
//
//var b = 8
//
//var c = a
//a = b
//b = c
//
//print("a: \(a)")
//print("b: \(b)")
//
////Computed Number
//
//var number = [45, 73, 195, 53]
//
//var computetedNumber = [ (number[0] * number[1]), (number[1] * number[2]), (number[2] * number[3]), (number[0] * number[3])]
//
//print("Results: \(computetedNumber)")
//
////Password Generation
//let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//
//var a1 = alphabet.randomElement()
//var b1 = alphabet.randomElement()
//var c1 = alphabet.randomElement()
//var d1 = alphabet.randomElement()
//var e1 = alphabet.randomElement()
//var f1 = alphabet.randomElement()
//
//let password = "\(a1!)"+"\(b1!)"+"\(c1!)"+"\(d1!)"+"\(e1!)"+"\(f1!)"
//print(password)
//
//func greeting(){
//
//    let hello = "hello"
//    _ = 0
//
//    for _ in 1 ... 4 {
//        print(hello)
//    }
//
//}
//
//greeting()

//var innerArray = ["◻️", "◻️", "◻️", "◻️", "◻️", "◻️"]
//var outerArray = [[String]]()
//
//var outerIndex = 0
//var innerIndex = 0
//
//func createWorld() {
//
//    for _ in 0 ... 6 {
//        outerArray.append(([]))
//    }
//
//    for i in 0 ... 6 {
//        outerArray[i] = innerArray
//    }
//
//}
//
//func start() {
//
//    createWorld()
//    outerArray[0][0] = "🦊"
//    outerArray[5][4] = "🌽"
//    for i in 0 ... 6 {
//        print(outerArray[i])
//    }
//
//}
//
//func locateFox() {
//
//    for i in 0..<outerArray.count - 1 {
//        if let n1 = outerArray.firstIndex(where: {$0[i] == "🦊"}) {
//            outerIndex = n1
//        }
//
//        if let n2 = outerArray.firstIndex(where: {$0[i] == "🦊"}) {
//            outerIndex = n2
//        }
//    }
//
//}
//
//func left() {
//    locateFox()
//    if innerIndex > 0 {
//        outerArray[outerIndex][innerIndex] = "◻️"
//        outerArray[outerIndex][innerIndex - 1] = "🦊"
//    }else{
//        print("Can't go furter left.")
//    }
//}
//
//func right() {
//    locateFox()
//    if (innerIndex < innerArray.count){
//        outerArray[outerIndex][innerIndex] = "◻️"
//        outerArray[outerIndex][innerIndex + 1] = "🦊"
//    }else{
//        print("Can't go to further right")
//    }
//}
//
//func up() {
//
//    locateFox()
//    if outerIndex > 0 {
//        outerArray[outerIndex][innerIndex] = "◻️"
//        outerArray[outerIndex - 1][innerIndex] = "🦊"
//    }else{
//        print("Can't go to further right")
//    }
//
//}
//
//func down() {
//    locateFox()
//    if outerIndex < outerArray.count {
//        outerArray[outerIndex][innerIndex] = "◻️"
//        outerArray[outerIndex + 1][innerIndex] = "🦊"
//    }else{
//        print("Can't go to further right")
//    }
//}
//
//func visualise() {
//    for i in 0 ... 6 {
//        print(outerArray[i])
//    }
//}


//func greeting() {
//
//    print("Hello...")
//
//}
//
//func greeting2(whoToGreet : String){
//    print("Hello \(whoToGreet)")
//}
//
//greeting2(whoToGreet: "Nestor")
//
//var myaAge = 12


//func calculator(){
//
//    let a = Int(readLine()!)!
//    let b = Int(readLine()!)!
//
//    add(n1: a, n2: b)
//    subtract(n1: a, n2: b)
//    multiply(n1: a, n2: b)
//    divide(n1: b, n2: b)
//
//}
//
//func add(n1: Int, n2: Int) {
//
//    print("- \(2+2)")
//}
//
//func subtract(n1: Int, n2: Int) {
//
//    print("- \(2-2)")
//
//}
//func multiply(n1: Int, n2: Int) {
//
//    print("- \(2*2)")
//
//}
//func divide(n1: Int, n2: Int) {
//
//
//        print("- \(2/2)")
//
//}
//
//calculator()

func loveCalculator() {

    let randLove = Int.random(in: 0 ... 100)
    
    switch randLove {
    case 81...100:
        print("\(randLove)")
        print("You love each other like kanye loves kanye")
    case 41..<81:
        print("\(randLove)")
        print("You go together like Coke And Mentos")
    case ...40:
        print("\(randLove)")
        print("You'll be forever alone")
    default:
        print("\(randLove)")
        print("Error Lovescore Out Of Range")
    }
//
//    if randLove > 80 {
//        print("\(randLove)")
//        print("You love each other like kanye loves kanye")
//    }else if randLove > 40 {
//        print("\(randLove)")
//        print("You go together like Coke And Mentos")
//    }else{
//        print("\(randLove)")
//        print("You'll be forever alone")
//    }

}

loveCalculator()


//var aYear = Int(readLine()!)!
//var year = 2025
//
//
//func isLeap(year: Int) {
//
//    if (year % 4 == 0  && year % 100 != 0 || year % 400 == 0) {
//
//        print("is Leap")
//
//    }else{
//        print("not is Leap")
//    }
//
//}
//
//isLeap(year: year)


