import UIKit

/// Leet Code 42 Trapping Rain water  proble
/// Time complexity : O(n)
/// Space complexity: O(n)
/// Find max left value and max right value of all elements int they array
/// Find the position  (min of max left and max right)
/// add sum = max of 0 and position - height[i]


func trapBig(_ height: [Int]) -> Int {
        let n = height.count
        if n == 0 { return 0 }

        var maxLeft = [Int](repeating: 0, count: n)
        var maxRight = [Int](repeating: 0, count: n)

        var lWall = 0
        var rWall = 0

        for i in 0..<n {
            let j = n - i - 1
            maxLeft[i] = lWall
            maxRight[j] = rWall
            lWall = max(lWall, height[i])
            rWall = max(rWall, height[j])
        }
        
        var sum = 0
        for i in 0..<n {
            let pot = min(maxLeft[i], maxRight[i])
            sum += max(0, pot - height[i])
        }

        return sum
    }
