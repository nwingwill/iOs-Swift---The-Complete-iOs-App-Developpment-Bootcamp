import Foundation

let fruits = ["Apple", "Pear", "Orange"]
let contacts = ["Adam" : 123456789, "James" : 987654321, "Amy" : 912837365]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closeRange = 1...5


for fruit in fruits {
    
    print(fruit)
    
}

print("--------")

for person in contacts {
    
    print(person.key)
    
}


print("--------")

for letter in word {
    
    print(letter)
    
}


print("--------")

for number in halfOpenRange {
    print(number)
}

print("--------")

for number in closeRange {
    
    print(number)
    
}


//print("--------")



//var now = Date().timeIntervalSince1970
//let onSecondFromNow = now + 1
//
//while now < onSecondFromNow {
//
//    now = Date().timeIntervalSince1970
//    print("waiting...")
//
//}

print("--------")

class Assignamengt {
    
    //    var n = 0
    
    func fibonacci(n : Int) {
        
        
        var n1 = 0
        var n2 = 1
        
        if n == 0 {
            
            print("Invalid")
            
        } else if n == 1 {
            
            print(n1)
            
        } else if n == 2 {
            
            print(n1, n2)
            
        } else {
            
            
            var array = [n1, n2]
            
            
            for _ in 2..<n {
                
                let n3 = n1 + n2
                n1 = n2
                n2 = n3
                
                array.append(n3)
            }
            
            print(array)
            
        }
        
        
    }
    
}

var result = Assignamengt()

result.fibonacci(n: 10)

