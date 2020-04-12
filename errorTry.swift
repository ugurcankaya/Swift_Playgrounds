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



let printerSuccess = try? send(job: 1884, printerName: "Ugur Kaya")
let printerFail = try?send(job: 1884, printerName: "NoToner") 
