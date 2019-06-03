import UIKit

let arrayOfNumbers = [1,5,3,6,2,7,23,34]

var sum = 0

for number in arrayOfNumbers {
    sum += number
}

print(sum)

for num in 1...20 {
    print(num)
}

for numb in 1..<20 where numb % 2 == 0 {
    print(numb)
}
