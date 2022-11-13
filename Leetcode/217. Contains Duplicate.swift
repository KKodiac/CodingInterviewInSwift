class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var table: [Int: Bool] = [:]
        for num in nums {
            if table[num] == true {
                return true
            } else {
                table[num] = true
            }
        }
        return false
    }
}