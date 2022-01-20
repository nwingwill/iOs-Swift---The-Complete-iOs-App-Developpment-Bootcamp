
//var aNumber = Int(readLine()!)!

//var day = Int.random(in: 1...7)
//
//func dayOfTheWeek(day: Int){
//
//
//    switch day {
//
//    case 1:
//        print("Monday")
//    case 2:
//        print("Thuesday")
//    case 3:
//        print("Wednesday")
//    case 4:
//        print("Thursday")
//    case 5:
//        print("Friday")
//    case 6:
//        print("Saturday")
//    case 7:
//        print("Sunday")
//    default:
//        print("day of the range")
//    }
//
//}
//
//dayOfTheWeek(day: day)


//DIctionaries

////Add value
//var stockTickers : [String : String] = [
//    "APPL" : "Apple Inc",
//    "HOG" : "Harley-Davison Inc",
//    "BOOM" : "Dinamic MAterials",
//    "HEINY" : "Heineken",
//    "BEN" : "Franklin Resources Inc"
//]
//
//stockTickers["WORK"] = "Slack"
//stockTickers["BOOM"] = "Slack 1"
//
//print(stockTickers["WORK"]!)
//print(stockTickers["BOOM"]!)
//
//
//// Optional
//var player1UserName: String? = nil
//
//player1UserName = "JackBauerIsawesome"
//
//print(player1UserName!)
//
//
//Ejercicio
//var studentsAndScores = ["Amy" : 0, "James" : 0, "Helen" : 0]
//
//studentsAndScores["Amy"] = Int.random(in: 0 ... 20)
//studentsAndScores["James"] = Int.random(in: 0 ... 20)
//studentsAndScores["Helen"] = Int.random(in: 0 ... 20)
//
//let score = studentsAndScores
//
//
//func higthScore(scores: [String : Int]) {
//    
//    if (scores["Amy"]! > scores["James"]! && scores["Amy"]! >  scores["Helen"]!) {
//    
//        print(scores["Amy"]!)
//    
//    } else if (scores["James"]! > scores["Amy"]! && scores["James"]! >  scores["Helen"]!)  {
//        
//        print(scores["James"]!)
//        
//    } else if (scores["Helen"]! > scores["Amy"]! && scores["Helen"]! >  scores["James"]!) {
//        
//        print(scores["Helen"]!)
//        
//    } else {
//        
//        print("Igual")
//        
//    }
//}
//
//higthScore(scores: score)

let array = [

    [1,2,3],
    [4,5,6],
    [7,8,9]
]

print(array[2][2])

