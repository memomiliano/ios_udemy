import UIKit

var numb1 : Int = 0
var numb2 : Int = 1

func fibonacci(until : Int) -> String  {
    
    if until > 0 {
        
        let thisNumber : Int = numb1 + numb2
        print(thisNumber)
        numb1 = numb2
        numb2 = thisNumber
        fibonacci(until: until - 1)
        
    }
    
    return "End"

}

print(fibonacci(until: 5))

