import Foundation
//submitted at 25.12.2023
class Solution {
    func removeStars(_ s: String) -> String {
        var array:[String] = []
        for i in s {
            if i == "*" {
                array.remove(at: array.count-1)
                continue
            }
            array.append(String(i))
        }
        print(array)
        
        return array.joined(separator: "")
    }
}

