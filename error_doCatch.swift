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
    let printerResponse = try send(job: 1040, printerName: "Ugur Kaya")
    print(printerResponse)
}catch{
    print(error)
}
//prints Job Sent
