//: [Previous](@previous)

import Foundation

// Q6.
// Implement a function that accepts an array of integers as an argument.
// This function should return the sum of each integer in the array.
// Your solution should be **recursive**. Your function must be pure (cannot use global variables)
// Sample Input [5, 2, 9, 11]
// Sample Output: 27

func sum(_ array: [Int])-> Int {
    guard array.count > 0 else { return 0 }
    let arraySlice = array.dropFirst()
    let answer = array[0] + sum(Array(arraySlice))
    
   return answer
}

var numbers = [1,2,3]
print(sum(numbers))
