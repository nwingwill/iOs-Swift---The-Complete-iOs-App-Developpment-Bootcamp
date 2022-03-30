import UIKit
let defaults = UserDefaults.standard

let dictionaryKey = "myDictionary"

defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Nestor", forKey: "PlayName")
defaults.set(Date(), forKey: "AppLastOpenByUser")
let array = [1,2,3]
defaults.set(array, forKey: "myArray")
let dictionary = ["name" : "Nestor"]
defaults.set(dictionary, forKey: dictionaryKey)


let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: "myDictionary")



