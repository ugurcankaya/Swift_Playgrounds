var evenNumbers = [Int]()
for i in 2...10 {
    if i % 2 == 0 {
        evenNumbers.append(i)
    }
}
func power(val: Float, power: Int)->Float{
    var c:Float = 1
    for  i in 1...power {
        c *= val
    }
    return c
}
func bessel(x: Float)->Float{
    var j0:Float = 0
    var counter = 1
    var dtVar:Float = 1
    for eNumber in evenNumbers {
        var determinatorList = [Int]()
        if counter == 1 {
            determinatorList.append(eNumber)
            
            for dtVal in determinatorList {
                dtVar *= power(val: Float(dtVal), power: 2)
            }
            j0 += (power(val: x, power: eNumber))/dtVar
              counter = -1
            
        }else if counter == -1{
            determinatorList.append(eNumber)
            for dtVal in determinatorList {
                dtVar *= power(val: Float(dtVal), power: 2)
                       }
            j0 -= (power(val: x, power: eNumber))/dtVar
            counter = 1
            
        }
      
    }
    
    return 1-j0
}

bessel(x: 5)

