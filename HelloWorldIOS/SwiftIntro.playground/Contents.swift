import UIKit

var str = "Hello, playground" //mutable

let withNandeesh = " with Nandeesh" //immutable

var displayString = "\(str), \(withNandeesh)" //string interpolation
print(displayString)

func doSomethingWithInput(number inputQuantity: Int) -> String{
    return "This is Number: " + String(inputQuantity) //type conversion and also using internal parameter (inputQuantity) for use within function
}

//func functionWithoutAnyExternalParameterName(_ internalParameterName: Int){
//  do something
// }


let quantityApendedWithString = doSomethingWithInput(number: 4)

print(quantityApendedWithString)


//loops
for i in 1...10{
    print(i)
}
print("\n")
for i in 1..<10{
    print(i)
}
print("\n")
for i in 1...10 where i%2 == 0 {
    print(i)
}
print("\n")
for i in (0...10).reversed() where i%2 == 0 {
    print(i)
}
print("\n")
for i in stride(from: 10, through: 0, by: -1) where i%2 == 0 {
    print(i)
}
print("\n")
func printFibonacciSequence(until fibonacciRange: Int){
    var first = 0
    var second = 1
    var fibString = "\(first)" + "," + "\(second)"
    for _ in 0...fibonacciRange{
        let currentFib = first + second
        fibString.append(",\(currentFib)")
        first = second
        second = currentFib
    }
    print(fibString)
}

printFibonacciSequence(until: 5)
print("\n")

//Difference between Fucntion vs Methods: https://stackoverflow.com/a/24136184/3805770
//functions are available globally and not tied to a type where as methods are functions that are tied to a type or instance of an object.


//Dictionaries
var dictionary = ["LAX": "LogAngeles International", "LHR":"Longdon Heathrow Airport"]
print(dictionary.keys)
print(dictionary.values)
print(dictionary.isEmpty)

print("\n")

//user [:] to create empty dictionary
var emptyDictionary: [String: String] = [:]
print(emptyDictionary.isEmpty)


//optionals

// optional = a variable can have a value or be nil
var jobDescriptionOfPerson: String?


//forced unwrapping an optional is telling the compiler that the value won't be nil at the point of usage

//implicitly unwrapping optionals
//https://krakendev.io/blog/when-to-use-implicitly-unwrapped-optionals
//https://www.hackingwithswift.com/example-code/language/what-are-implicitly-unwrapped-optionals

//Optional binding
//the if block gets executed only if the assignment is possible and assignment is possible only if the value is not nil
if let tmpConstant = variableName{
    //use your optional assigned to temporary constant here
    print(tmpConstant)
}

//Object oriented programming in swift
//see Instruments_OOPS.playground downloaded from below URL
//https://www.raywenderlich.com/599-object-oriented-programming-in-swift

//classes and objects

//designated initializer and convenience initializers

class Car{
    var color = "White"
    var noOfSeats = 5
    
    //designated initializer (default constructor)
    init(){
        
    }
    
    convenience init(userChoseColor: String, choseSeats: Int){
        self.init()
        color = userChoseColor
        noOfSeats = choseSeats
    }
}

//Inheritance in Swift



//Polymorphism in Swift



//Optionals in Swift






