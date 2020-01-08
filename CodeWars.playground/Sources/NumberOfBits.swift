import Foundation

/**
 Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

 Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
 */
public func countBits(_ n: Int) -> Int {
    let binary = String(n, radix: 2)
    print(binary)
    var result = 0
    for s in binary {
        if s == "1" {
            result += 1
        }
    }
    return result
}

public func countBits2(_ n: Int) -> Int {
    var mutableN = n
    var result = 0
    while (mutableN > 0) {
        result += mutableN & 1
        mutableN >>= 1
    }
    return result
}

