//: Playground - noun: a place where people can play

import UIKit

// Binary Search: Devide and Conquer - it's the classic way to speed up search. The trick is to keep splitting the array in half until the value is found. 
//How does it work? 
/*
    * Spli the array in half and determine whether the thing you're looking for known as the search key is in the left or right half.
    * make sure the array is sorted so you can use the < > comparision
    * if the search key is in the left half, you repeat the process there, split the left half into tow even smaller pieces. like wise is on the right side 
    * This repeats until the search key is found
 */


func binarySearch<T: Comparable>(_ array: [T], key: T, range: Range<Int>) -> Int? {

    // if we get here, then key is not present in the array

    if range.lowerBound > range.upperBound {
        return nil
    } else {

        //calculate the mid split
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

        if array[midIndex] > key {
            return binarySearch(array, key: key, range: range.lowerBound..<midIndex)
        } else if array[midIndex] < key {
            return binarySearch(array, key: key, range: midIndex + 1..<range.upperBound)
        } else {
            return midIndex // if we get here, then we have found the searchkey
        }

    }
}






let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

