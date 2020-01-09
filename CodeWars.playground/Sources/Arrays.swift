import Foundation

/**
 In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
 */
public func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
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
public func findOutlier(_ array: [Int]) -> Int {
    let firstThree = abs(array[0])%2 + abs(array[1])%2 + abs(array[2])%2
    let lookingFor = firstThree < 2 ? 1 : 0
    for n in array {
        if abs(n) % 2 == lookingFor {
            return n
        }
    }
    return -1
}

/**
 You will be given a number and you will need to return it as a string in Expanded Form. For example:
 expandedForm 12    -- Should return '10 + 2'
 expandedForm 42    -- Should return '40 + 2'
 expandedForm 70304 -- Should return '70000 + 300 + 4'
 */

public func expandedForm(_ num: Int) -> String {
  guard num > 10 else { return String(num) }

  // Do something
  var mutableN = num
  let devider = 10
  var multiplier = 1
  var result = ""
  while (mutableN > 0) {
    if mutableN % 10 != 0 {
      result = "\(mutableN % 10 * multiplier)" + (result.isEmpty ? "" : " + ") + result
    }
    mutableN = mutableN / devider
    multiplier = multiplier * 10
  }
  return result
}
