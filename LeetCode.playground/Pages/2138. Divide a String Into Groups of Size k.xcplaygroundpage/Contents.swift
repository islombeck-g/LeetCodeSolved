import Foundation

//submitted at 12.01.2024
class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        
        var count = 0
        var result:[String] = []
        var newS = ""
        for i in s {
            print(i)
            if count == 3 {
                result.append(newS)
                newS.removeAll()
                newS.append(i)
                count = 1
                
            } else {
                newS.append(i)
                count += 1
            }
            
        }
        if newS != "" {
            for i in count..<3 {
                newS.append(fill)
            }
            result.append(newS)
        }
        return result
    }
}

let  s = "abcdefghi", k = 3, fill:Character = "x"

print(Solution().divideString(s, k, fill))

