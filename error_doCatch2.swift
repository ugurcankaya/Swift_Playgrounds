enum PrinterError:Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, printerName:String) throws-> String{
    if printerName == "NoToner"{
        throw PrinterError.noToner
    }
    return "Job sent"
}

do{
    let printerResponse = try send(job: 1040, printerName: "NoToner")
    print(printerResponse)
}catch PrinterError.outOfPaper{
    print("You need to add papers into your printer.")
}catch PrinterError.noToner{
    print("You gotta buy another toner.");

}
catch let printerError_ as PrinterError{
    print(printerError_)
}catch{
    print(error)
}
