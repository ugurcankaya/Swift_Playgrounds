var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "apple"]

func fridgeContains(_ food:String) -> Bool{
    fridgeIsOpen = true
    defer{
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
