// Finding the closest sum of 3 numbers in the given array to the target given

import UIKit

func threeSum(_ nums: [Int], _ target : Int) -> Int {
    let number = nums.sorted()
    var closest = Int(UInt32.max)
    
    for index in 0 ..< number.count - 2 {
        let first = number[index]
        var left = index + 1
        var right = number.count - 1
        
        while left < right {
            var sum = first + number[left] + number[right]
            if abs(sum - target) < abs(closest - target) {
                closest = sum
            } else if (sum < target) {
                right -= 1
            } else if (sum > target) {
                left += 1
            } else {
                return sum
            }
        }
    }
    return closest
}

threeSum([2, 4, 5, 3], 17)
