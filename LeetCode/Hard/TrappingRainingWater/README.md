# 42. Trapping Rain Water


Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.


Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.
Example 2:

Input: height = [4,2,0,3,2,5]
Output: 9


### Method 1

**Time Complexity** : O(n)
**Space Complexity** : O(n)


1. Prepare the Max Left values into array
2. Prepare the Max right values into array
3. Find the position  (min of max left and max right)
4. Add sum = max of 0 and position - height[i]

![Method 1](/images/method1.png "Method 1")


### Method 2

**Time Complexity** : O(n)
**Space Complexity** : O(1)


1. Compare MaxLeft and MaxRight values in the Array and keep moving the pointer whichever is min
2. For each pointer movement, calculate the difference between the  current points and maxLeft or maxRight, and see if the value is positive, that is height of water

![Method 2](/images/method2.png "Method 2")

### Tech

* [Xcode](https://developer.apple.com/xcode/) - Xcode 16.2

### Links

*[Trapping Rain Water]([https://www.youtube.com/shorts/fy9v5orjn1M](https://www.youtube.com/watch?v=ZI2z5pq0TqA)).   

*[Trapping Rain Water Gregg Hog](https://www.youtube.com/watch?v=KFdHpOlz8hs&t=313s). 

*[Leet code link](https://leetcode.com/problems/trapping-rain-water/description/).  

