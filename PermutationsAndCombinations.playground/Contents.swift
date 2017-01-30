//: Playground - noun: a place where people can play

import UIKit

// calculate factorial 


func factorial(_ number: Int) -> Int {
    guard number > 1 else {
        return 1
    }
    return number * factorial(number - 1)
}

factorial(5)


// let's say that from that collection of five letters you want to only choose 3 elements. How many posssible ways can you do ithis.

func numberOfPermutations(_ n: Int, k: Int) -> Int {
    return factorial(n) / (n - k)
}

numberOfPermutations(5, k: 3)
