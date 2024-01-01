import Foundation
//submitted 01.01.24

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        
        let children = g.sorted(by: >)
        let cookies = s.sorted(by: >)
        
        var i = 0, j = 0, result = 0
        
        while true {
            if i == children.count || j == cookies.count {
                break
            }
            
            if children[i] <= cookies[j] {
                result += 1
                j += 1
            }
            
            i += 1
        }
        return result
    }
}

let g = [1,2], s = [1,2,3]

print(Solution().findContentChildren(g, s))
