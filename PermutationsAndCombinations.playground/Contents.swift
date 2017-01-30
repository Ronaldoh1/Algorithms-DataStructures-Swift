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



//Combinations

//Total number of combinations = permutations(n,k)/ factorial(k)
//The C(n, k) function counts the number of ways to choose k things out of n possibilities. That's why it's also called "n-choose-k". (A fancy mathematical term for this number is "binomial coefficient".)


func combinations(_ n: Int, _ k: Int) -> Int {
    return numberOfPermutations(n, k: k) / factorial(k)
}


combinations(5, 3)