
protocol CanFly {
    
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        
        if isFemale {
            
            print("The bird makes a new bird in a shell.")
            
        }
        
    }
    
//    func fly(){
//
//        print("The bird flaps its wings annd lifts off innto the sky.")
//
//    }
    
}


class Eagle: Bird, CanFly {
    func fly() {
        print("The Eagle flaps its wings annd lifts off innto the sky.")
    }
    
    
    
    func soar() {
        print("The Eagle glides in the air using air currents.")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through  the water")
    }
}

struct AirPlane: CanFly {
    func fly() {
        print("The Eagle glides in the air using air currents.")
    }
    
}


struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}


let myEagle = Eagle()
let myPenguin = Penguin()
let myAirplane = AirPlane()
myEagle.fly()
myPenguin.swim()
let museum = FlyingMuseum()

myEagle.fly()
myEagle.soar()
museum.flyingDemo(flyingObject: myEagle)

