import UIKit

let defaults = UserDefaults.standard
let sharedURLSession = URLSession.shared

class Car {
    var colour = "red"
}

let myCar = Car()
myCar.colour = "Blue"

let yourCar = Car()
print(yourCar.colour)
