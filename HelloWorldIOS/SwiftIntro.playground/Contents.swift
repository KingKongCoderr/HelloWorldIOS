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
