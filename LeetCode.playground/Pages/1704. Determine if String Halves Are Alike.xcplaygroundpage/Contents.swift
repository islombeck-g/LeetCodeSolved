import Foundation

//submitted at 12.01.2024
class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        
        let newArray = Array(s)
        
        var count = 0
        var count1 = 0
        let alphabet:[String.Element] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        for i in 0..<newArray.count/2 {
            if alphabet.contains(newArray[i]) {count += 1}
        }
        for i in newArray.count/2..<newArray.count {
            
            if alphabet.contains(newArray[i]) {count1 += 1}
        }
        
        return count == count1
    }
}
let s = "book"

print(Solution().halvesAreAlike(s))
