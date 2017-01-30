//: Playground - noun: a place where people can play

import UIKit

//A stack is like an array but with limited functionality. YOu can only push to add new element to the top of the stack, pop to remove from the top and peek at the top of the element without popping it off. 


public struct Stack<T> {
    fileprivate var array = [T]()

    var isEmpty: Bool {
        return array.isEmpty
    }

    var count: Int {
        return array.count
    }

    public mutating func push(_ element: T) {
        array.append(element)
    }

    public mutating func pop() -> T? {
      return array.popLast()
    }

    public func peek() -> T? {
        return array.last
    }

}


