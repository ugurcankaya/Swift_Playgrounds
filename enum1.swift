enum Rank: Int{
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    
}
func greater(a: Rank, b:Rank) -> String {
    if a.rawValue > b.rawValue {
        return "\(a.self) is greater"
    }else{
        return "\(b.self) is greater"
    }
}

if let convertedRank = Rank(rawValue: 1){
    let threeDescription = convertedRank.simpleDescription()
    
}
