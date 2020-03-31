//: [Previous](@previous)

import Foundation

// Q1.
// Given a linked list, write a function to traverse it and print each value in order.
class Node<T> {
    var next: Node?
    let val: T
    init(_ val: T) {
        self.val = val
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else {
            return "\(val) -> nil"
        }
        return "\(val) -> \(next)"
    }
}

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    public var isEmpty: Bool {
        print("empty list")
        return head == nil
    }
    
    
    
    public func append(_ value: T) {
        let newNode = Node(value)
        
        guard let lastNode = tail else {
            head = newNode
            tail = head
            return
        }
        
        lastNode.next = newNode
        tail = newNode
        
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "empty list"
        }
        return "-> \(head)"
    }
}

let list = LinkedList<String>()
list.append("oscar")
list.append("ivan")
list.append("alex")
print(list)

// Print format:
//```
//-> 4 -> 9 -> 2 -> 3 -> nil
//```
