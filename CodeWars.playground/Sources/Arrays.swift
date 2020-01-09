import Foundation

/**
 In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
 */
func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    var result = 0
    for i in start...end {
        if !String(abs(i)).contains("5") {
            result += 1
        }
    }
    return result
}

/**
 You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
 */
func findOutlier(_ array: [Int]) -> Int {
    let firstThree = abs(array[0])%2 + abs(array[1])%2 + abs(array[2])%2
    let lookingFor = firstThree < 2 ? 1 : 0
    for n in array {
        if abs(n) % 2 == lookingFor {
            return n
        }
    }
    return -1
}
