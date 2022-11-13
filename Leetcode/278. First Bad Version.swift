/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 0
        var end = n
        var answer: Int = 0
        while start <= end {
            let pivot: Int = (start + end) / 2
            if self.isBadVersion(pivot) == true {
                end = pivot - 1
                answer = pivot
            } else {
                start = pivot + 1
            }
        }
        return answer
    }
}