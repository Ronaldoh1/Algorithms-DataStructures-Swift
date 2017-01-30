//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Greatest Common Disvisor

//The greatest common divisor (or greatest common factor) of two number a and b is the largest positive integer that divides and b without remainder



func gcd(_ a: Int, _ b: Int) -> Int {

    let remainder = a % b
    if remainder != 0 {
        return gcd(b, remainder)
    } else {
        return b
    }

}

gcd(52, 39)        // 13
gcd(228, 36)       // 12
gcd(51357, 3819)   // 57