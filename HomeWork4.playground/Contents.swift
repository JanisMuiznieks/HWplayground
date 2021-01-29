import UIKit
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
var myTeam = "Bootcamp coders"

var resultsOfGames = [
    "Brooklyn Nets"         : ["99:89","109:99"],
    "Dallas Mavericks"      : ["87:93", "104:97"],
    "Washington Wizards"    : ["117:112","107:122"]
     
]
for (opponentTeam, result) in resultsOfGames {
    result.forEach { result in
        print("\(myTeam) against \(opponentTeam) scored \(result)")
        
    }
}


/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
let moneyInWallet: [Int] = [5, 10, 20, 50, 100, 200, 500]
func calculateCash() -> Int {
    var totalCash: Int
    totalCash = moneyInWallet.reduce(0, +)
    return totalCash
}
print("\nI have \(calculateCash()) EUR in my wallet!")
    /*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

var number = 4
var even = true
func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
       even = true
    } else {
        even = false
    }
 return Bool(even)
}

print("\nIs \(number) an even number? \nAnswer is \(isEvenNumber(number: number))")


// ========== Karlis code with Arrays =========

func isEvenNumbers(number: Int) -> Bool {
    number % 2 == 0
}

let garbageNums = [1,3,5,4,2,8,10]
garbageNums.forEach { garbage in
    print("\n \(isEvenNumbers(number: garbage))")
    
}
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
//var symbolsInArray = 5
//func createArray(_ n: Int) -> [Int] {
//
//    var _ = arc4random_uniform(20) + 1
//    let _ = Array(arrayLiteral: 1...100)
//    return (0..<n).map { _ in .random(in: 1...20)}
//}
//print("My array with \(symbolsInArray) integers: \(createArray(symbolsInArray))")
    
func createArray(start: Int, end: Int) -> [Int] {
    Array(start...end)
    }
   var array = createArray(start: 1, end: 100)
print("\n \(array)")
    
    
    
    /*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

array.forEach { number in
    if isEvenNumber(number: number) {
        array.remove(at: array.firstIndex(of: number)!)
    }
}
print("\n \(array)")

