import UIKit

func beerSong() {
    
    for numberOfBeer in (1...99).reversed() {
        print("\(numberOfBeer) bottler of beer on the wall, \(numberOfBeer) bottles of beer. \nTake one down and pass it around, \(numberOfBeer - 1) bottles of beer on the wall. \n")
    }
    
    print("No more bottles of beer on the wall, no more bottle of beer. \nGo to the stor and buy some more, 99 bottles of beer on the wall.")
    
}

beerSong()
