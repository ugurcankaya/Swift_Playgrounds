//Protocols and Extensions
protocol ExampleProtocol{
    var simpleDescription: String{get}
    mutating func adjust()
}

class SimpleClass:ExampleProtocol{
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    func adjust() -> Void  {
        simpleDescription += "Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure:ExampleProtocol{
    var simpleDescription: String = "A Simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
