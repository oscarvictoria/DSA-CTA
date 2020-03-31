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
    var resultsArray = [Int]()
    var numberOfTimes = [Int:Int]()
//    var answer = [Int]()
    
    for num in array {
        
        
        
        if num == number {
            resultsArray.append(num)
        }
    }
    
    
    return resultsArray
}

var someArray = [1,3,5,6,8,9,10,1,1]

print(getNumbers(someArray, 1))
