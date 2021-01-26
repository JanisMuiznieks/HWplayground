import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var number1: Float = 6.66
var number2: Float = 77.7
var numberSum: Double = Double(number1) + Double(number2)
print(numberSum)
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne: Int = 13
var numberTwo = 5
let divideOneByTwo = numberOne - numberTwo
let remainderOneByTwo = numberOne / numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divideOneByTwo), the remainder is \(remainderOneByTwo)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 12
var price = 1000
var totalSum = qty * price
if qty >= 5 && qty < 10{
    price = 900
    totalSum = qty * price
} else if qty >= 10 {
    price = 850
    totalSum = qty * price
} else {
    price = 1000
    totalSum = qty * price
}
print("New: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) EUR.")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge: String = "33a"
var convertToInt = Int(userInputAge)

if convertToInt == nil {
    print("convertToInt does not contain any value")
} else {
    print(convertToInt ?? "")
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let myDayOfBirth = Calendar.current.date(from: DateComponents(year: 1999, month: 2, day: 7))!
let myAgeInMonths = Calendar.current.dateComponents([.month], from: myDayOfBirth, to: Date()).month!
let totalYearsFromBirth = myAgeInMonths / 12
let totalMonthFromBirth = myAgeInMonths
let totalDaysFromBirth = myAgeInMonths * Int(365.25)
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = 2
switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter!")
case 4...6:
    print("I was born in the second quarter!")
case 7...9:
    print("I was born in the thrid quarter!")
case 10...12:
    print("I was born in the fourth quarter!")
default:
    break
}
