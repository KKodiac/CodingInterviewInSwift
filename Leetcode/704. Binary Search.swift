class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count
        while start < end {
            let pivot = (start + end) / 2
            if nums[pivot] == target {
                return pivot
            } else {
                if nums[pivot] < target {
                    start = pivot + 1
                } else {
                    end = pivot
                }
            }
        }
        return -1
    }
}