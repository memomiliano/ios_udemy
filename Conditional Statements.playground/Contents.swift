import UIKit

func loveCalculator (yourName : String, theirName : String) -> String {
    
    let loveScore : Int = Int.random(in: 0 ... 100)
    
    if loveScore > 80 {
        return "Your love score is \(loveScore). You love each other like Kanye loves Kanye"
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). You got together like coke and mentos!"
    }
    else{
        return "Your love score is \(loveScore). No love possible, you'll be forever alone!"
    }
    
}

print(loveCalculator(yourName: "Maximiliano", theirName: "Sayira"))

