
//Basic Used
//struct Town {
//    let name = "Angeland"
//    var citizens = ["Anghela", "Jack Bauer"]
//    var resources = ["Grain" : 100, "Ore" : 42, "Wool" : 75]
//
//
//    //Add Method
//    func fortify() {
//        print("Defenses incresased!")
//    }
//}

//var myTown = Town()
//
////Access to elements
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")
//
////Add new Element
//myTown.citizens.append("Keneau Reeves")
//print(myTown.citizens.count)
//myTown.fortify()


//struct Town {
//    let name : String
//    var citizens : [String]
//    var resources : [String : Int]
//
//
//    //Inicializador de Struct para crear instancias del elemento, agregandole variables externas
//    init(name : String, citizens : [String], resources : [String : Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//
//
//    //Add Method
//    func fortify() {
//        print("Defenses incresased!")
//    }
//}
//
//var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts" : 100])
//var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed" : 1])
//
//
//anotherTown.citizens.append("Wilson")
//
//print(anotherTown.citizens.count)
//ghostTown.fortify()





//Diagnostic Code
func exercise() {
    
    
    struct User {
        
        var name : String
        var email : String?
        var fallowers : Int
        var isActive : Bool
        
        init(name : String, email : String?, fallowers : Int, isActive : Bool) {
            self.name = name
            self.email = email
            self.fallowers = fallowers
            self.isActive = isActive
        }
        
        func logStatus() {
            
            if fallowers != 0 {
//                self.name = "Richard"
                print("\(name) has left earth")
            }
            
            if isActive == true {
             
                
                print("\(name) is working hard")
        //        exercise()
//                print("\(name) has left eart")

            }
        }
        
    }
    
    let musk1 = User(name: "Richard", email: "", fallowers: 0, isActive: false)
    musk1.logStatus()
    
    print("\nDiagnostic Code (i.e, Cahllenge Hit): ")
    var musk = User(name: "Elon", email: "elon@tesla.com", fallowers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!)...")
    print("\(musk.name) has \(musk.fallowers) Fallowers")
    musk.isActive = false
//    musk1.fallowers == 0
    musk.logStatus()
}

exercise()


func isOdd(_ n : Int) -> Bool {
    
    var result : Bool
    
    
    if n % 2 == 0 {
//        print("true")
        result = true
    } else {
        
//        print(false)
        result = false
    }
    
    return result
    
}


var t = isOdd(4)

print(t)
