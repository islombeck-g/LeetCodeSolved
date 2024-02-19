import Foundation

//solved 19.02.2024
class Solution {
    func reverseWords(_ s: String) -> String {
        
        var queue = ""
        var res = ""
        
        for i in s {
            if i == " " {
                if  !queue.isEmpty { queue.append(" "); removeStackElements(stack: &queue, res: &res) }
                 continue
            }
            queue.append(String(i))
        }
        if !queue.isEmpty {
            queue.append(" ")
            removeStackElements(stack: &queue, res: &res)
        }
        res.removeLast()
        return res
    }
    func removeStackElements(stack: inout String, res: inout String) {
        while !stack.isEmpty {
            res.insert(stack.removeLast(), at: res.startIndex)
        }
    }
}

let s = "the sky is blue"

print(Solution().reverseWords(s))
