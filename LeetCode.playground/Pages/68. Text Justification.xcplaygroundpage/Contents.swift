import Foundation

//solved at 12.01.2024
class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        
        var result:[String] = []
        var semiString:[Character] = []
        for word in words {
            if semiString.count + word.count <= maxWidth {
                for char in word {semiString.append(char)}
                if semiString.count < maxWidth {semiString.append("_")}
            } else {
                
                if semiString.count == maxWidth {
                   
                    if semiString.last == " " { semiString.removeLast() } else {
                        var me = ""
                        for char in semiString {
                            me.append(char)
                        }
                        result.append(me)
                        semiString = []
                        for char in word {semiString.append(char)}
                        if semiString.count != maxWidth {semiString.append("_")}
                        continue
                    }
                    
                    for i in 0..<semiString.count {
                        if semiString[i] == "_" {
                            semiString.insert("_", at: i)
                            break
                        }
                    }
                    if !semiString.contains("_") {semiString.append("_")}
                    
                    
                    var me = ""
                    for char in semiString {
                        me.append(char)
                    }
                    result.append(me)
                    semiString = []
                    for char in word {semiString.append(char)}
                    if semiString.count != maxWidth {semiString.append("_")}
                    continue
                }
                
                semiString.removeLast()
                
                if !semiString.contains("_") {semiString.append("_")}
                
                var count = 0
                print(semiString)
                while semiString.count < maxWidth {
                    
                    if count >= maxWidth || semiString.count-1 < count {count = 0}
           
                    if semiString[count] == "_" {
                        semiString.insert("_", at: count)
                        while semiString[count] == "_" && count < semiString.count-1 {
                            count += 1
                        }
                    }
                    count += 1
                    print(semiString)
                }
                var me = ""
                for char in semiString {
                    me.append(char)
                }
                result.append(me)
                semiString = []
                for char in word {semiString.append(char)}
                if semiString.count != maxWidth {semiString.append("_")}
                
            }
        }
        if !semiString.isEmpty {
            var me = ""
            for char in semiString {
                me.append(char)
            }
            while me.count != maxWidth {
                me.append("_")
            }
            result.append(me)
        }
        return result
    }
}

let words = ["This", "is", "an", "example", "of", "text", "justification."], maxWidth = 16
let word1 = ["What","must","be","acknowledgment","shall","be"]
let word2 = ["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"]

let result = Solution().fullJustify(words, maxWidth)
for i in result { print(i) }

print("end")

////expected
//[
//    "Science  is  what we",
//    
//    "understand      well",
//    
//    "enough to explain to",
//    
//    "a  computer.  Art is",
//    "everything  else  we",
//    "do                  "]
//
////output
//["Science  is  what we","understand      well","enough  to explain to","a  computer.  Art is","everything  else  we","do                  "]
