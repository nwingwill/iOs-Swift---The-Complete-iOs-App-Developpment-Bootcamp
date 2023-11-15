import UIKit

//Prpiedad observable
var pizzaInches: Int = 12 {
    
    willSet {
        
        print(newValue)
        
    }
    
    didSet {
        
        
        if pizzaInches >= 18 {
            
            print("Invalid size specified, pizzaInInches set to 18")
            pizzaInches = 18
            
        }
        
    }
    
}

pizzaInches = 33


var numberOfPeople: Int = 6
var slicePerPerson: Int = 5

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
    
    set {
        
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicePerPerson
        
    }
    
}

print(numberOfPizza)
//numberOfSlices = 12
//
//print(numberOfSlices)
//
//let a = numberOfSlices * 2
//

