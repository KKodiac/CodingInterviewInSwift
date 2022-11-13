class Solution {
    func validate(_ string: String) -> String {
        var table: [Character: Int] = [:]
        var tracker: Int = 0
        var pattern: String = ""
        string.forEach { value in
            if !table.keys.contains(value) { 
                table[value] = tracker
                tracker += 1
            }
            guard let character = table[value] else { return }
            pattern += "\(character) "
        }
        
        return pattern
    }
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let resultS = self.validate(s)
        let resultT = self.validate(t)
        return resultS == resultT
    }
}