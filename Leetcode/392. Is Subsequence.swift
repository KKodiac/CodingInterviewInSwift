
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0 {
            return true
        }
        if s.count > t.count {
            return false
        }
        
        var arrayS = Array(s)
        var arrayT = Array(t)
        var currentS = 0
        for charT in arrayT {
            if charT == arrayS[currentS] {
                currentS += 1
                if currentS >= s.count {
                    return true
                }
            }
        }
        
        return false
    }
}