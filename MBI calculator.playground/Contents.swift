import UIKit

func bmiCalculator (yourWeight : Float, yourHeight : Float) -> String {
    
    let BMI : Float = ( yourWeight / (yourHeight * yourHeight))
    
    if BMI > 25 {
        return "Your BMI is \(BMI). You are overweight."
    }
    else if BMI > 18.5 && BMI <= 25 {
        return "Your BMI is \(BMI). You have a normal weight"
    }
    else {
        return "Your BMI is \(BMI). You are underweight"
    }
    
}

print(bmiCalculator(yourWeight: 71.6, yourHeight: 1.74))
