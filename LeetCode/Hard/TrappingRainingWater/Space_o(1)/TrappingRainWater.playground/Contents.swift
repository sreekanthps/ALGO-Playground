import UIKit

/// Leet Code 42 Trapping Rain water  proble
/// Time complexity : O(n)
/// Space complexity: O(1)
/// Conpare MaxLeft and Maxright values in Array and keep moving the pointer which ever is min
/// For each pointer movement calucate the difference between current points and maxLeft or maxRight and see if value is positive that is height of water


func trap(_ height: [Int]) -> Int {
    
    guard height.count > 0 else { return 0 }
        
    var left = 0
    var right = height.count - 1
    var leftMax = height[left]
    var rightMax = height[right]
    var sum = 0
    
    while left < right {
        if leftMax < rightMax {
            left += 1
            leftMax = max(leftMax, height[left])
            sum += leftMax - height[left]
        } else {
            right  -= 1
            rightMax = max(rightMax ,height[right])
            sum += rightMax - height[right]
            
        }
    }
    return sum
}
