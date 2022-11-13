class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        // 0 ~ i-1 까지의 합의 최댓값을 subproblem 으로 구해놓으면 0 ~ i 까지의 합의 최댓값은 i-1 + i 또는 i
        var maxSum = nums[0]
        var curSum = 0
        for num in nums {
            curSum = curSum + num
            if curSum > 0 {
                maxSum = max(curSum, maxSum)
            } else {
                maxSum = max(curSum, maxSum)
                curSum = 0
            }
        }
        return maxSum
    }
}