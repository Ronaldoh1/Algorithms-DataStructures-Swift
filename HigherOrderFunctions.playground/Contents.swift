//: Playground - noun: a place where people can play

import UIKit


let numbers = [1, 2, 3, 4, 3, 3]

// 1. filter inot [3, 3, 3], then filter into [2, 4] (even numbers)

let filtered = numbers.filter({ return $0 == 3})
filtered

let filteredEven = numbers.filter({ return $0 % 2 == 0})
filteredEven


var filteredArray = [Int]()

for number in numbers {

    if number == 3 {
         filteredArray.append(number)
    }

}


// 2. Transform[1, 2, 3, 4] - [ 2, 4, 6, 8]

let doubled = numbers.map({ return $0 * 2 } )

doubled



// 3. sum [1, 2, 3, 4] -> 10 using reduce 

let sum = [1, 2, 3, 4].reduce(0, +)

