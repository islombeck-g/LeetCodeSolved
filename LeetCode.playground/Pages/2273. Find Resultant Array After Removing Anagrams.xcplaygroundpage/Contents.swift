import Foundation

//solved at 16.01.2024
class Solution {
    func removeAnagrams(_ words: [String]) -> [String] {
        var new = words
        var indixesArray:[Int] = []
        for i in 1..<words.count {
            let d = dictionary(words[i-1])
            let d1 = dictionary(words[i])
            
            if d == d1 {indixesArray.append(i)}
        }
        print(indixesArray)
        for i in indixesArray.reversed() {
            new.remove(at: i)
        }
        return new
    }
    private func dictionary(_ text:String) ->Dictionary<Character, Int> {
        var dic:Dictionary<Character, Int> = [:]
        for i in text {
            dic[i, default: 0]  += 1
        }
        return dic
    }
}

let words = ["abba","baba","bbaa","cd","cd"]

print(Solution().removeAnagrams(words))
