import UIKit
import Foundation

class Animal {
    
    var name : String
    
    init(n: String) {
        
        name = n
        
    }
    
}

class Human: Animal {
    func code()  {
        
        print("Typing away...")
        
    }
}

class Fish: Animal {
    
    func breatheUnderWater() {
        
        print("Breathing under water.")
        
    }
    
}

let nestor = Human(n: "Nestor Blanco")
let alessandra = Human(n: "Alessandra Blanco")
let nemo = Fish(n:"Nemo")

let neighbours = [nestor, alessandra, nemo]


///is Verifica el tipo de dato al que pertenece
if neighbours[0] is Human {
    
    print("First neighbour is a human")
    
}

func findNemo(from animals : [Animal]) {
    
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            
            ///Convertir en subclase (casting forzado)
            let fish = animal as! Fish
            fish.breatheUnderWater()
            
            ///Elevar objeto a su superclase
            let animalFish = fish as Animal
            print(animalFish.name)
            
        }
    }
}

findNemo(from: neighbours)

///CUando no se esta seguro del tipo de dato de utiliza as?

if let fish = neighbours[1] as? Fish {
    
    fish.breatheUnderWater()
    
} else {
    
    print("Casting has failed")
    
}


