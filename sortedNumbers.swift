var numbers = [Int]()
for i in 1 ..< 11{
    numbers.append(i)
}
print(numbers)
let mappedNumbers = numbers.map({(number:Int) -> Int in
    if number % 2 != 0{
        return Int(0)
    }else{
        return number
    }
})

let sortedNumbers = numbers.sorted {$0>$1}
print(mappedNumbers)
print(sortedNumbers)
