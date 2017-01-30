//: Playground - noun: a place where people can play

import UIKit

//finding min and max of item in an array

func minimum<T: Comparable>(_ array: [T]) -> T? {
    //ensure that the array is not empty
    guard !array.isEmpty else {
        return nil
    }
    var minimum = array.first!

    for element in array {

        minimum = element < minimum ? element : minimum
    }

    return minimum
}

func maximum<T: Comparable>(_ array: [T]) -> T? {

    guard !array.isEmpty else {
        return nil
    }

    var max = array.first!

    for element in array {

        max = element > max ? element : max

    }

    return max
}


let array = [ 8, 3, 9, 4, 6 ]
minimum(array)   // This will return 3
maximum(array)   // This will return 9