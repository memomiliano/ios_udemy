//Creating the getMilk() function
//func getMilk() {
//    print("Go to the shops")
//    print("buy 2 cartons of milk")
//    print("pay $2")
//    print("come home")
//}

func getMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    
    let priceToPay = howManyMilkCartons * 2
    var amountOfChange : Int = 0
    
    if howMuchMoneyRobotWasGiven < priceToPay {
        
        print("No te alcanza para comprar")
        
    }else{
        
        print("Go to the shops")
        print("buy \(howManyMilkCartons) cartons of milk")
        print("pay $\(priceToPay)")
        print("come home")
        amountOfChange = howMuchMoneyRobotWasGiven - priceToPay
    }

    return amountOfChange
}

//Calling the getMilk() function
var amountOfChange = getMilk(howManyMilkCartons: 10, howMuchMoneyRobotWasGiven: 30)
print("Hello master, here's your $\(amountOfChange) change")

