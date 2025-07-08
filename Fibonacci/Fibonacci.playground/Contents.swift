import UIKit

var greeting = "Hello, playground"


public func fibonacci_exponential(number: Int) -> Int {
    
    if number == 1 {  return 1 }
    if number == 0 { return 0 }
    return fibonacci_exponential(number: number - 1) + fibonacci_exponential(number: number - 2)
}

public func fibonacci_linear(number: Int) -> Int {
    var arr = [0,1]
    if number == 1 {  return 1 }
    if number == 0 { return 0 }
    for i in 2...number+1 {
        arr.append(arr[i-1] + arr[i-2])
    }
    return arr[number]
}

func test_fibonacci() {
    for i in 0...8 {
        print("i \(i).. fibonacci... \(fibonacci_exponential(number: i))")
    }
    
    for i in 0...8 {
        print("i \(i).. fibonacci... \(fibonacci_linear(number: i))")
    }
}


test_fibonacci()
