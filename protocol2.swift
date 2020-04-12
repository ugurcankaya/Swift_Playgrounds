//Math Funcs
import Foundation
//Protocols and Extensions
protocol ExampleProtocol{
    var simpleDescription: String{get}
    mutating func adjust()
}

class SimpleClass:ExampleProtocol{
    var simpleDescription: String = "A very simple class "
    var anotherProperty: Int = 69105
    func adjust() -> Void  {
        simpleDescription += "Now 100% adjusted."
    }
}



struct SimpleStructure:ExampleProtocol{
    var simpleDescription: String = "A Simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

extension Int: ExampleProtocol{
    var simpleDescription: String{
        return "the number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    
}

extension Double{
    var absoluteValue:String{
        return " ABS(\(self)) = \(Int(abs(self)))"
    }
    
}


print((-1.00).absoluteValue) //print ABS(-1)= 1
