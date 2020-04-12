import Foundation
let latitute:Double = 44.9871
let longitute:Double = -93.2758
let range:Double = 200.0

func isInRange(lat: Double, long: Double)->Bool{
   let difference = sqrt(pow((latitute-lat), 2)) + pow ((longitute-long), 2)
    let distance = difference * 0.002
    return distance < range
}

let latitude_1: Double = 44.9871
let longitude_1: Double = -93.2758

let latitude_2: Double = 44.9513
let longitude_2: Double = -93.0942

struct Location{
    let latitude:Double
    let longitute:Double
}
struct DeliveryRange {
    var range: Double
    let center: Location
}

let pizzaLocation = Location(latitude: 44.9871, longitute: -93.2758)
var pizzaRange = DeliveryRange(range: 200, center: pizzaLocation)
print(pizzaRange.center.latitude)
