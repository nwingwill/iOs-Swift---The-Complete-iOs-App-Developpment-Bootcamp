import UIKit

var width: Float = 1.5
var height: Float = 2.3
var value: Float = 0


var bucketsOfPaint: Int {
    
    get {
        let area =  width * height
        let areaCoveredPerBuckets: Float = 1.5
        let numeberOfBuckets = area / areaCoveredPerBuckets
        let roundedBucket = ceilf(numeberOfBuckets)
        return Int(roundedBucket)
        
    }
    
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of Paint can cover an area of \(areaCanCover)")
        value = Float(areaCanCover)
//        return areaCanCover
        
    }
    
}

bucketsOfPaint = 6

print(bucketsOfPaint)
print(value)
