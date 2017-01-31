//: Playground - noun: a place where people can play

import UIKit


public class LinkedListNode<T> {
    var value: T?
    var next:  LinkedListNode?
    weak var previous: LinkedListNode?

    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>

    fileprivate var head: Node?

    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node? {
        return head
    }


    public var last: Node? {
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }

    public var count: Int {
        var c = 0
        if var node = head {
            while case let next? = node.next {
                node = next
                c += 1
            }
            return c
        } else {
            return 0
        }
    }

    //we need fo find a specific node 

    public func nodeAt(_ index: Int) -> Node? {

        if index > 0 {
            var node = head
            var i = index
            while node?.next != nil {
                if i == 0 {
                    return node
                }
                i -= 1
                node = node?.next
            }
        }

        return nil
    }


}