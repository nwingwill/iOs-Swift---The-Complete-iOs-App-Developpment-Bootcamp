import UIKit

class Car {
    
    var colour = "Red"
    
    static let singletonCar = Car()
    
}

let myCar  = Car.singletonCar
myCar.colour = "Blue"

let yourCar = Car.singletonCar
print(yourCar.colour)

