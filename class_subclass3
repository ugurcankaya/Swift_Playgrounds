class NamedShape{
    var numberOfSides:Int
    var name:String
    
    init(name: String, sides: Int = 0) {
        self.name = name
        self.numberOfSides = sides
    }
    
    func simpleDescription() -> String {
        return "The \(name) shape with \(numberOfSides) sides."
    }
    
}

class square:NamedShape{
    var sideLength:Double
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A Square with sides of length \(sideLength)."
    }
}

class Circle:NamedShape{
    var radius:Double
    let pi:Double = 3.1415926535
    
    init(radius: Double, name:String){
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }
    func area() -> Double{
        pi*(radius*radius)
    }
    override func simpleDescription() -> String {
        return "A Circle with r= \(radius) and its name is \(name)"
    }
}

class EquilateralTriangle:NamedShape{
    var sideLength:Double = 0.0
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter : Double{
        get{
            return 3.0 * sideLength
        }set{
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength) and name is \(name)."
    }
}


//let myCircle = Circle(radius: 5.2, name: "My Test Circle")
//print(myCircle.simpleDescription())
//print(myCircle.area())

/* var triangle1 = EquilateralTriangle(sideLength: 3.1, name: "My Triangle")
print(triangle1.perimeter)
triangle1.perimeter = 9.9
print(triangle1.perimeter)
print(triangle1.sideLength)
print(triangle1.simpleDescription())
 
 */

let optionalSquare: square? = square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

//if the value before ? is nil, everything after the ? is ignored and the value of the whole expression is nil.
//Otherwise the optinal value is unwrapped, and everyting after the ? acts on the unwrapped value. In both cases, the value of the whole expression is an optinal value
