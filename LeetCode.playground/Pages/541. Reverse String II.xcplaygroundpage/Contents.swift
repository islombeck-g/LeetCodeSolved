import Foundation

//solved at 27.02.2024
class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var me = s
        var res = ""
        var queue:[Character] = []
        var count = 0
        var isMe = false
        
        for elem in s {
            if count == k  {
                while !queue.isEmpty {
                    res.append(String(queue.removeLast()))
                }
                res.append(String(elem))
                count += 1
            } else if count < k  {
                queue.append(elem)
                count += 1
            } else {
                res.append(String(elem))
                count += 1
                if count == 2 * k {
                    count = 0
                }
            }
        }
        
        if !queue.isEmpty {
            while !queue.isEmpty {
                res.append(String(queue.removeLast()))
            }
        }
        return res
    }
}
let s = "abcdefg", k = 2

print(Solution().reverseStr(s, k))
 
//поменяйте местами первые k символов на каждые 2k символов, считая от начала строки.

//Если осталось меньше k символов, поменяйте местами все из них. 
//Если их меньше 2k, но больше или равно k символам, то поменяйте местами первые k символов и оставьте остальные как исходные.

