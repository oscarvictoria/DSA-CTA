//: [Previous](@previous)

import Foundation

// Q2.
// Write a function that takes in an array of integers (arr) and a number (n)
// You function should return an array with only numbers appearing n or more times.
// Your solution must work in O(n) time.
//
// Example:
// Input: [1,3,4,1,9,1,3,4,3,1,2], 3
// Output: [1,3]

func getNumbers(_ array: [Int], _ number: Int)-> [Int] {
    var result = [Int]()
    var dic = [Int:Int]()
    
    for num in array {
        dic[num] = (dic[num] ?? 0) + 1
    }
    
    for (key, value) in dic {
        if value >= number {
            result.append(key)
        }
    }
    return result
}
var someArray = [1,3,4,5,5,5,3,3,3]
print(getNumbers(someArray, 3))
