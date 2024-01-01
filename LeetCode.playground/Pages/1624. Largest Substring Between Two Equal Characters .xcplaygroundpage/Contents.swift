import Foundation
//submitted 01.01.2024

class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        
        let array = Array(s)
        var maxElem = -1
        
        for index in 0..<array.count - 1 {
            
            let left = array.count - 1 - index
            var count = -1
            var find = false
            
            for i in 0..<left+1 {
                if array[i] == array[left] {
                    if find {
                        if maxElem < count {
                            maxElem = count
                        }
                        count += 1
                    } else {
                        find = true
                        count += 1
                    }
                } else {
                    if find {
                        count += 1
                    }
                }
            }
        }
        return maxElem
    }
}

let s = "mgntdygtxrvxjnwksqhxuxtrv"

print(Solution().maxLengthBetweenEqualCharacters(s))



