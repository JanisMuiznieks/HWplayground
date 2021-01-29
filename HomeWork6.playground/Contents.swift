import UIKit


/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case divison = "/"
}
/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */

func calculateResult(numberOne: Int, numberTwo: Int, calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType{
    case .addition:
        result += numberTwo;
    case .substraction:
        result -= numberTwo;
    case .multiplication:
        result *= numberTwo;
    case .divison:
        result /= numberTwo
    }
    
    print("Result: \(numberOne) \(calculationType.rawValue) \(numberTwo) = \(result)")
    return result
}
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

calculateResult(numberOne: 85, numberTwo: 5, calculationType: .addition)

calculateResult(numberOne: 85, numberTwo: 5, calculationType: .substraction)

calculateResult(numberOne: 85, numberTwo: 5, calculationType: .multiplication)

calculateResult(numberOne: 85, numberTwo: 5, calculationType: .divison)
/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */
struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    init(name:String, productionYear:Int, horsePower:Int) {
        self.name = name
        self.productionYear = productionYear
        self.horsePower = horsePower
    }
    func getSpecs() {
        print("\(name), \(productionYear), \(horsePower)")
    }
}

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */
var audiQ7 = Car(name: "AUDI Q7", productionYear: 2020, horsePower: 450)
var audiTT = audiQ7
audiTT.name = "AUDI TT"
audiTT.horsePower = 650

audiQ7.getSpecs()
audiTT.getSpecs()
