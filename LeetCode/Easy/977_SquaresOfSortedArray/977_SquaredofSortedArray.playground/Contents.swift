import UIKit

/// 977. Squares of a Sorted Array
/// Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
/// Example 1:
///     Input: nums = [-4,-1,0,3,10]
///     Output: [0,1,9,16,100]
///     Explanation: After squaring, the array becomes [16,1,0,9,100].
///     After sorting, it becomes [0,1,9,16,100].
/// Example 2:
///     Input: nums = [-7,-3,2,3,11]
///     Output: [4,9,9,49,121]


func sortedSquares(_ nums: [Int]) -> [Int] {
    
    guard nums.count > 0 else {
        return [nums[0] * nums[0]]
    }
    var left = 0 , right = nums.count - 1
    var results : [Int] = []
    
    while left <= right {
        if abs(nums[left]) > abs(nums[right]) {
            results.append(nums[left] * nums[left])
            left += 1
        } else {
            results.append(nums[right] * nums[right])
            right -= 1
        }
        
    }
    
    return results.reversed()
}

let output = sortedSquares([-4,-1,0,3,10])
