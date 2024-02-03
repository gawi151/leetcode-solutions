// https://leetcode.com/problems/running-sum-of-1d-array/
class RunningSumOfIntArray {
    fun runningSum(nums: IntArray): IntArray {
        var i = 1
        while (i < nums.size) {
            nums[i] += nums[i-1]
            i++
        }
        return nums
    }
}