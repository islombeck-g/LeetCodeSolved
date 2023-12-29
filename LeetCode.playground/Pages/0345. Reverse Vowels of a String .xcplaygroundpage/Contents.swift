import Foundation
//submitted 29.12.23

class Solution {
    func reverseVowels(_ s: String) -> String {
        var result = Array(s)
        
        var i = 0, j = result.count-1
        var find = false, find1 = false

        while i <= j {
            if find == true && find1 == true {
                
                let swich = result[i]
                result[i] = result[j]
                result[j] = swich
                find = false
                find1 = false
                i += 1
                j -= 1
            } else {
                if find == false {
                    if result[i] != "a" && result[i] != "A" &&
                        result[i] != "e" && result[i] != "E" &&
                        result[i] != "i" && result[i] != "I" &&
                        result[i] != "o" && result[i] != "O" &&
                        result[i] != "u" && result[i] != "U" { i += 1 } else {
                        find = true
                    }
                }
                if find1 == false {
                    if result[j] != "a" && result[j] != "A" &&
                        result[j] != "e" && result[j] != "E" &&
                        result[j] != "i" && result[j] != "I" &&
                        result[j] != "o" && result[j] != "O" &&
                        result[j] != "u" && result[j] != "U" { j -= 1 } else {
                            find1 = true
                        }
                }
            }
        }
        return String(result)
    }
}


let s = "aA"

print(Solution().reverseVowels(s))
"leotcede"

//                change = result[i]
