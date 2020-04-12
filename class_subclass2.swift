class AdimSayar{
    var toplamAdim:Int = 0{
        willSet(yeniToplamAdim){
                print("Toplam adim sayisi \(yeniToplamAdim)")
        }
        didSet{
            if toplamAdim > oldValue{
                print("Eklenen adim sayisi \(toplamAdim-oldValue)")
                
            }
        }
    }
}
/*
    if we do not need to compute the property but still need to provide code that is run
    before and after setting a new value, we use willSet and didSet

    willSet{
        Just before it has been set
    }
    willSet{
        worked after it has been set
    }
*/

var adimSayar1 = AdimSayar()
adimSayar1.toplamAdim = 20
