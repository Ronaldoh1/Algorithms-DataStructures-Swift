//: Playground - noun: a place where people can play

import UIKit


//func linearSearch<T: Equatable>(_ array: [T], object: T) -> Int? {
//
//    for (index, item) in array.enumerated() where object == item {
//        return index
//    }
//
//    return nil
//}


func linearSearch<T: Equatable>(_ array: [T], object: T) -> Int? {

    for (index, obj) in array.enumerated() where obj == object {
        return index
    }

    return nil
}


//Test
linearSearch([5, 2, 4, 7], object: 7)


//Linear search runs at O(n). It compares the object we're looking for with each object in the array so the time it takes is proportional to the array length. In worst case, we need to look at all the elements in the array.