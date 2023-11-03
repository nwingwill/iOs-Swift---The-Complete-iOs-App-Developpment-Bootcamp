import UIKit

let pizzaInches: Int = 12
let numberOfPeople: Int = 6
let slicePerPerson: Int = 5

//Getter ocurre tantas veces como se modifique el valor asignado al return
var numberOfSlices: Int {
    
    get {
        return pizzaInches - 4
    }
    set {
        
        print("numberOfSlices now has a new value which is \(newValue)")
        
    }
}

var numberOfPizza: Int {
    
    get {
        
        let numberOfPeopleFedPerPizza = numberOfSlices / slicePerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
}

print(numberOfPizza)
//numberOfSlices = 12
//
//print(numberOfSlices)
//
//let a = numberOfSlices * 2
//

