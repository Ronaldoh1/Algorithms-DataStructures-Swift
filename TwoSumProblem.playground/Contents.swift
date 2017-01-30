//: Playground - noun: a place where people can play

import UIKit

//You're given an array a with numbers,. Write an algorithm that checks if there two entires in the array that add up to the number k. In other words is there any a[i] + a[j] == k 

// a[j] = k - a[i]

func twoSumProblem(a:[Int], k: Int) -> ((Int, Int))? {

    var dictionary = [Int : Int]()

    for i in 0 ..< a.count {

        if let newK = dictionary[a[i]] {
            return (newK, i)
        } else {
            dictionary[k - a[i]] = i
        }
    }

    return nil
}


let a = [ 7, 2, 23, 8, -1, 0, 11, 6  ]

if let (i, j) = twoSumProblem(a: a, k: 7) {

    a[i] + a[j]
}