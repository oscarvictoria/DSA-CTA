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

func sortedNode(node: Node<Int>)-> String {
    var des = String()
    while node.next != nil {
        des = node.description
       break
    }
    return des
}


var node1 = Node<Int>(1)
var node2 = Node<Int>(2)
var node3 = Node<Int>(3)
var node4 = Node<Int>(4)

node1.next = node3
node3.next = node2
node2.next = node4

print(sortedNode(node: node1))



// Print format:
//```
//-> 4 -> 9 -> 2 -> 3 -> nil
//```


