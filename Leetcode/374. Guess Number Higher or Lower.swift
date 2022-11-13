
/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var start = 1 
        var end = n
        var answer = n
        while start < end {
            let number: Int = (start + end) / 2
            if self.guess(number) == -1 {
                end = number
            } else if self.guess(number) == 1 {
                start = number + 1
            } else {
                answer = number
                break
            }
        }
        return answer
    }
}