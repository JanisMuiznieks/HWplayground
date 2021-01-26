import UIKit

var str = "Hello, playground"

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 21
/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
let yearsToAdd = 10
var myAgeInTenYears: Int = myAge + yearsToAdd
/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear: Double = 365.25
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed = Float(myAgeInTenYears) * Float(daysInYear)
/*
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

var dateComponent = DateComponents()
dateComponent.year = yearsToAdd

let calendar = Calendar.current

let currentDate = Date()
let birthDate = formatter.date(from: "07.02.1999")
let
*/
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print("My age is \(myAge) years. In 10 years, I will be \(myAgeInTenYears). From the moment of my birth day have passed \(daysPassed)")
/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let AC = 8.0
let CB = 6.0
var AB: Double = sqrt(AC*AC+CB*CB)
var area = (CB + AC + AB) / 2
var perimeter = AC + AB + CB
